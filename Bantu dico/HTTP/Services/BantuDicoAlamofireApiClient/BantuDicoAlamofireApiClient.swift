//
//  BantuDicoAlamofireApiClient.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 28/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class BantuDicoAlamofireApiClient {
    
    var environment: BantuDicoApiEnvironment = .dev
    private let sessionManager: SessionManager
    
    init(configuration: URLSessionConfiguration = URLSessionConfiguration.default, environment: BantuDicoApiEnvironment = .dev) {
        sessionManager = SessionManager(configuration: configuration)
    }
}

//MARK: - BantuDicoApiClient

extension BantuDicoAlamofireApiClient: BantuDicoApiClient {
    
    func translate(word: String,
                   sourceLanguage: String,
                   destinationLanguage: String,
                   queue: DispatchQueue? = DispatchQueue.main,
                   completion: BantuDicoApiTranslationCompletionHandler?) -> URLSessionTask? {
        
        let request = BantuDicoAlamofireApiEndpoint.translate(word, sourceLanguage, destinationLanguage, environment.baseURL)
        
        return sessionManager.request(request)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseObject(completionHandler: { (response:DataResponse<ApiBantuWord>) in
                
                switch response.result {
                case .success(let bantuWord):
                    queue?.async {
                        completion?(bantuWord, nil)
                    }
                case .failure(let error):
                    print(error)
                }
        }).task
    }
    
    func fetchSupportedLanguages(queue: DispatchQueue? = DispatchQueue.main,
                                 completion: BantuDicoApiLanguagesCompletionHandler?) -> URLSessionTask? {
        
        let request = BantuDicoAlamofireApiEndpoint.supportedLanguages(environment.baseURL)
        
        return sessionManager.request(request)
            .validate(statusCode: 200..<300)
            .validate(contentType: ["application/json"])
            .responseArray(completionHandler: { (response:DataResponse<[ApiBantuLanguage]>) in
                
                switch response.result {
                case .success(let bantuLanguages):
                    queue?.async {
                        completion?(bantuLanguages, nil)
                    }
                case .failure(let error):
                    print(error)
                }
        }).task
    }
}
