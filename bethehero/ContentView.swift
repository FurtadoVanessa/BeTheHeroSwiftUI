//
//  ContentView.swift
//  bethehero
//
//  Created by Douglas castilho on 05/05/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import SwiftUI


struct Cards: View {
    @ObservedObject var data = GetCases()
    var body: some View {
    ScrollView{
        List(data.cases, id: \.id){ incident in
            CardView(incident: incident)
        }
    }
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationView{

        VStack(alignment: .leading) {
            HStack {
                Image("icon").resizable().frame(width: 94, height: 50)
                Spacer()
                Text("Total de 12 casos").font(.subheadline)
            }
            Text("Bem-vindo!").bold()
            Text("Escolha um dos casos e salve o dia.").padding(.bottom)
            Cards()
            Spacer()
        }.padding().frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Color(hex: 0xE5E5E5))
            .navigationBarTitle("").navigationBarHidden(true)
    }.background(Color(hex: 0xE5E5E5))
    }

}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    init(hex: Int, alpha: Double = 1){
        let components = (
            R: Double((hex >> 16) & 0xff) / 255,
            G: Double((hex >> 08) & 0xff) / 255,
            B: Double((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B)
    }
}
