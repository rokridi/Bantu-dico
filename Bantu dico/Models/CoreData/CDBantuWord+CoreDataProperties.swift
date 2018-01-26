//
//  CDBantuWord+CoreDataProperties.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 25/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//
//

import Foundation
import CoreData


extension CDBantuWord {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDBantuWord> {
        return NSFetchRequest<CDBantuWord>(entityName: "CDBantuWord")
    }

    @NSManaged public var identifier: Int16
    @NSManaged public var word: String?
    @NSManaged public var translations: CDBantuWord?
}
