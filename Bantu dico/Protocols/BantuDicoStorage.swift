//
//  BantuDicoStorage.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 24/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

typealias BantuDicoStorageFetchWordCompletionHandler = (BantuWord?, Error?) -> Void
typealias BantuDicoStorageSaveWordCompletionHandler = (BantuWord?, Error?) -> Void
typealias BantuDicoStorageFetchLanguagesCompletionHandler = ([String]?, Error?) -> Void
typealias BantuDicoStorageSaveLanguageCompletionHandler = (Bool, Error?) -> Void

protocol BantuDicoStorage {
    func fetch(word: String, sourceLanguage: String, destinationLanguage: String, completionHandler: BantuDicoStorageFetchWordCompletionHandler?)
    func save(word: String, sourceLanguage: String, destinationLanguage: String, completionHandler: BantuDicoStorageSaveWordCompletionHandler?)
    func fetchLanguages(completionHandler: BantuDicoStorageFetchLanguagesCompletionHandler?)
    func save(language: String, destinationLanguage: String, completionHandler: BantuDicoStorageSaveLanguageCompletionHandler?)
}
