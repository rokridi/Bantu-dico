//
//  BantuWord.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 24/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

protocol BantuWord {
    var identifier: Int {get}
    var word: String {get}
    var language: String {get}
}
