//
//  Incident.swift
//  bethehero
//
//  Created by Douglas castilho on 17/05/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import SwiftUI

struct Data: View {
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var incident: Case
var body: some View {
    ScrollView{
        VStack(alignment: .leading){
            HStack {
                Image("icon").resizable().frame(width: 94, height: 50)
                Spacer()
                Button(action: {self.presentationMode.wrappedValue.dismiss()}){
                        Image(systemName: "chevron.left").foregroundColor(.red).padding()
                }
            }.background(Color(hex: 0xE5E5E5))
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
                Text("DESCRICAO:").bold().padding([.top, .bottom])
                Text(incident.description).padding(.bottom).fixedSize(horizontal: false, vertical: true)
                Text("VALOR:").bold().padding([.top, .bottom])
                Text(String(format: "%f", incident.value)).padding(.bottom)
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
            Spacer()
            VStack(alignment: .leading){
                HStack {
                    Text("Salve o dia!").bold().padding([.top, .bottom]).font(.title)
                }
                HStack {
                    Text("Seja o herói desse caso.").bold().padding([.top, .bottom])
                }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Text("Entre em contato:").padding([.top, .bottom])
                HStack {
                    Button(action: { print("email")}){
                        HStack {
                            Text("Whatsapp").fontWeight(.bold)
                        }.frame(minWidth: 0, maxWidth: .infinity).padding().background(Color.red).foregroundColor(Color.white).cornerRadius(10)
                    }
                    Spacer()
                    Button(action: { print("email")}){
                        HStack {
                            Text("Email").fontWeight(.bold)
                        }.frame(minWidth: 0, maxWidth: .infinity).padding().background(Color.red).foregroundColor(Color.white).cornerRadius(10)
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
        }.padding().frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity).background(Color(hex: 0xE5E5E5))
        }.background(Color(hex: 0xE5E5E5))
    }
}


struct Incident: View {
    var incident: Case
    var body: some View {
        NavigationView{
            Data(incident: incident)
          .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true).navigationBarBackButtonHidden(true)
    }
    }
}

struct Incident_Previews: PreviewProvider {
    static var previews: some View {
        Incident(incident: Case())
    }
}
