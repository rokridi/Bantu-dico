//
//  BantuDicoApiConfiguration.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 26/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

enum BantuDicoApiEnvironment {
    
    case prod
    case dev
    
    var baseURL: String {
        
        switch self {
        case .prod:
            return ""
        case .dev:
            return ""
        }
    }
}

struct BantuDicoApiConfiguration {
    
    static var apiEnvironment: BantuDicoApiEnvironment = .dev
    
    static var baseURL: String {
        
        return apiEnvironment.baseURL
    }
}
