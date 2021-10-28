//
//  File.swift
//  
//
//  Created by Adnann Muratovic on 28.10.21.
//

import Foundation
import Vapor
import MongoDBVapor

final class Store: Content {
    var id: UUID?
    var name: String
    var model: String
    var cpu: String
    var price: Int
}

