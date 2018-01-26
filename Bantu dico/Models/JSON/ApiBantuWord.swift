//
//  ApiBantuWord.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 24/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import ObjectMapper

struct ApiBantuLanguage: BantuLanguage, ImmutableMappable {
    
    let identifier: Int
    let code: String
    
    init(map: Map) throws {
        identifier = try map.value("id")
        code = try map.value("name")
    }
}
