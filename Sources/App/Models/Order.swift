//
//  File.swift
//  
//
//  Created by Adnann Muratovic on 04.11.21.
//

import Foundation
import Vapor
import MongoDBVapor

final class Order: Content {
    var itemName: String
    var buyerName: String
    var date: Date?
    
    init(itemName: String, buyerName: String, date: Date?) {
        self.itemName = itemName
        self.buyerName = buyerName
        self.date = date
    }
}
