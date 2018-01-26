//
//  ApiBantuLanguage.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 26/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import ObjectMapper

struct ApiBantuWord: BantuWord, ImmutableMappable {
    
    let identifier: Int
    let word: String
    let language: String
    
    init(map: Map) throws {
        identifier = try map.value("id")
        word = try map.value("word")
        language = try map.value("language")
    }
}
