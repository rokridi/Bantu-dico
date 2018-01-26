//
//  BantuDicoApiService.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 24/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import Moya

enum BantuDicoEndpoint {
    
    case translate(String, String, String)
    case supportedLanguages
}

extension BantuDicoEndpoint: TargetType {
    
    var baseURL: URL {
        return URL(string: BantuDicoApiConfiguration.baseURL)!
    }
    
    var path: String {
        switch self {
        case .translate(_ ,_ ,_):
            return ""
        case .supportedLanguages:
            return ""
        }
    }
    
    var method: Moya.Method {
        return .post
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .translate(let word, let sourceLanguage, let destinationLanguage):
            let parameters = ["word": word,
                              "sourceLanguage": sourceLanguage,
                              "destinationLanguage": destinationLanguage]
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        case.supportedLanguages:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
}

class BantuDicoApiService: BantuDicoApiClient {
    
    var requestTimeout: TimeInterval = 10
    
}

//MARK: - BantuDicoApiClient
extension BantuDicoApiService {
    
    func translate(word: String, sourceLanguage: String, destinationLanguage: String, completion: BantuDicoApiTranslationCompletionHandler?) -> Cancellable? {
        return nil
    }
    
    func fetchSupportedLanguages(completion: BantuDicoApiLanguagesCompletionHandler?) -> Cancellable? {
        return nil
    }
}
