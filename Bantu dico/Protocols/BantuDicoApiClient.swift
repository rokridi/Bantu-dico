//
//  BantuDicoApiClient.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 24/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

typealias BantuDicoApiTranslationCompletionHandler = (BantuWord?, Error?) -> Void
typealias BantuDicoApiLanguagesCompletionHandler = ([BantuLanguage]?, Error?) -> Void

protocol BantuDicoApiClient: class {
    func translate(word: String, sourceLanguage: String, destinationLanguage: String, queue: DispatchQueue?, completion: BantuDicoApiTranslationCompletionHandler?) -> URLSessionTask?
    func fetchSupportedLanguages(queue: DispatchQueue?, completion: BantuDicoApiLanguagesCompletionHandler?) -> URLSessionTask?
}
