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
    var subtype: String?
    var artist: String?
    
    enum CodingKeys: String, CodingKey {
        case name
        case imageUrl
     //   case number_Card = "number"
        case number
        case subtype
        case artist
    }
}


struct Card: Decodable {
    let cards: [Pokemon]
}
