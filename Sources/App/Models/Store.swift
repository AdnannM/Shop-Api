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

    var name: String
    var model: String
    var cpu: String
    var price: Int
    var createdAt: Date?
    
    init(name: String, model: String, cpu: String, price: Int, createdAt: Date?) {
        self.name = name
        self.model = model
        self.cpu = cpu
        self.price = price
        self.createdAt = createdAt
    }
}

