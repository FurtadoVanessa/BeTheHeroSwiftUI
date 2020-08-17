//
//  CardView.swift
//  bethehero
//
//  Created by Douglas castilho on 09/05/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var incident: Case
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                VStack(alignment: .leading){
                    Text("CASO:").bold().padding(.bottom)
                    Text(incident.title)
                    }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

                VStack(alignment: .leading){
                    Text("ONG:").bold().padding(.bottom)
                    Text(incident.ong)
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            }.padding([.top, .bottom])
            Text("VALOR:").bold().padding([.top, .bottom])
            Text(String(format: "%f", incident.value)).padding(.bottom)
            Divider()
                HStack{
                    NavigationLink(destination: Incident(incident:incident)){
                    Text("Ver mais detalhes").font(Font.system(.headline)).foregroundColor(.red)
                    Spacer()
                    Image(systemName: "chevron.right").foregroundColor(.red).padding()
            }
            }
        }.padding().background(Color.white)
            .cornerRadius(10).overlay(
                RoundedRectangle(cornerRadius:10).stroke(
                    Color(
                        red: 150/255,
                        green: 150/255,
                        blue: 150/255
                )
            )
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(incident: Case())
    }
}
