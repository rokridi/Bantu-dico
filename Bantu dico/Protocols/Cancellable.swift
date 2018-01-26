//
//  Cancellable.swift
//  Bantu dico
//
//  Created by Mohamed Aymen Landolsi on 26/01/2018.
//  Copyright © 2018 Rokridi. All rights reserved.
//

import Foundation

protocol Cancellable {
    var isCancelled: Bool { get }
    func cancel()
}
