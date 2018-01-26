//
//  CDBantuLanguage+CoreDataProperties.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 25/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//
//

import Foundation
import CoreData


extension CDBantuLanguage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDBantuLanguage> {
        return NSFetchRequest<CDBantuLanguage>(entityName: "CDBantuLanguage")
    }

    @NSManaged public var code: String?

}
