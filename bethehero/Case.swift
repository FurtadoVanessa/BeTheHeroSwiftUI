//
//  File.swift
//  bethehero
//
//  Created by Douglas castilho on 21/05/20.
//  Copyright © 2020 Vanessa Furtado. All rights reserved.
//

import Foundation

let defaultText: String = "N/A"

struct Case: Codable, Identifiable {
    var id: Int = 0
    var title:String = defaultText
    var description:String = defaultText
    var ong:String = defaultText
    var value:Double = 0
    var whatsapp:String = defaultText
    var email:String = defaultText
    
}
