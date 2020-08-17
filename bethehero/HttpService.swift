//
//  HttpService.swift
//  bethehero
//
//  Created by Douglas castilho on 21/05/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import Foundation


public class GetCases: ObservableObject {
    @Published var cases = [Case]()
    
    init() {
        load()
    }
    
    func load(){
        let url = URL(string: "http://192.168.0.99:3333/incidents")
        
        URLSession.shared.dataTask(with: url!) {(data, repsonse, error) in
            do{
                if let d = data {
                    let jsonCases = try JSONDecoder().decode([Case].self, from: d)
                    DispatchQueue.main.async {
                        self.cases = jsonCases
                    }
                }else {
                    print("Nao foi possivel recuperar os dados")
                }
            } catch {
                print("Nao foi possivel recuperar os dados")
            }
        }.resume()
    }
}
