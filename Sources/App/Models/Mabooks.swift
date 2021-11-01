//
//  File.swift
//  
//
//  Created by Adnann Muratovic on 25.10.21.
//

import Foundation
import Vapor
import FluentSQLiteDriver

struct Macbooks: Content, Codable {
    
    static let schema = "macbook"
    
    var name: String
    var model: String
    var cpu: String
    var price: Int
    
//    init(name: String, model: String, cpu: String, price: Int) {
//        self.name = name
//        self.model = model
//        self.cpu = cpu
//        self.price = price
//    }
    
    
}
