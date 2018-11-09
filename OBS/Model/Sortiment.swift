//
//  Sortiment.swift
//  NEWW OBS
//
//  Created by Michael Baaske on 30.10.18.
//  Copyright © 2018 Michael Baaske. All rights reserved.
//

import Foundation

class Artikel: Codable {
    let name : String
    var amount : Int = 0
    let price : Double
    
    init(_name: String, _price: Double) {
        name = _name
        price = _price
    }
    
}

class Sortiment: Codable {
    var kopfhörer = Artikel(_name: "Kopfhörer", _price: 3.5)
    var capriSun = Artikel(_name: "Capri Sun", _price: 1.0)
    var softdrinks = Artikel(_name: "Softdrinks", _price: 2.5)
    var coffee = Artikel(_name: "Kaffee / Tee", _price: 2.0)
}
