//
//  BantuDicoCoreDataService.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 25/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation
import CoreData

class BantuDicoCoreDataService {
    
    let persistentContainer: NSPersistentContainer
    
    lazy private var operationQueue: OperationQueue = {
        let queue = OperationQueue()
        queue.name = "com.bantu_dico.coreData_storage.queue"
        queue.maxConcurrentOperationCount = 1
        return queue
    }()
    
    init(persistentContainer: NSPersistentContainer) {
        self.persistentContainer = persistentContainer
    }
}

//MARK: - BantuDicoStorage

extension BantuDicoCoreDataService: BantuDicoStorage {
    
    func fetch(word: String, sourceLanguage: String, destinationLanguage: String, completionHandler: BantuDicoStorageFetchWordCompletionHandler?) {
    }
    
    func save(word: String, sourceLanguage: String, destinationLanguage: String, completionHandler: BantuDicoStorageSaveWordCompletionHandler?) {
    }
    
    func fetchLanguages(completionHandler: BantuDicoStorageFetchLanguagesCompletionHandler?) {
    }
    
    func save(language: String, destinationLanguage: String, completionHandler: BantuDicoStorageSaveLanguageCompletionHandler?) {
    }
}
