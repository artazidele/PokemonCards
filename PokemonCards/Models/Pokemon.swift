//
//  File.swift
//  PokemonCards
//
//  Created by arta.zidele on 09/02/2021.
//

import Foundation


struct Pokemon: Decodable {
    let name: String
    var imageUrl: String?
   // let number_Card: String
    let number: String
    let subtype: String?
    var artist: String?
    let id: String
    let supertype: String?
    
    enum CodingKeys: String, CodingKey {
        case name, supertype
        case imageUrl
     //   case number_Card = "number"
        case number
        case subtype
        case artist
        case id
    }
}


struct Card: Decodable {
    let cards: [Pokemon]
}
