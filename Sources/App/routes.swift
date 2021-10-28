
import Vapor
import Foundation
import MongoDBVapor

struct Store: Content {
    var name: String
    var model: String
    var cpu: String
    var price: Int
}

extension Request {
    var storeCollection: MongoCollection<Store> {
        self.mongoDB.client.db("storeDb").collection("store", withType: Store.self)
    }
}


func routes(_ app: Application) throws {
    /*
        - TODO:
            - A POST request will create a new kitten in the database.
            - A PUT request will update a store in database
            - A DELETE request will delete item in database
     */
   
    // A GET request will return a list of all kittens in the database.
    app.get { req -> EventLoopFuture<View> in
        req.storeCollection.find().flatMap { cursor in
            cursor.toArray()
        }.flatMap { store in
            req.view.render("shop.leaf", ["store": store])
        }
    } 
}



