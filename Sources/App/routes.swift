import MongoDBVapor
import Vapor
import Leaf

extension Request {
    /// Convenience accessor for the home.store collection.
    var storeCollection: MongoCollection<Store> {
        self.mongoDB.client.db("storeDb").collection("store", withType: Store.self)
    }
}

extension Request {
    var orderCollection: MongoCollection<Order> {
        self.mongoDB.client.db("storeDb").collection("order", withType: Order.self)
    }
}

func routes(_ app: Application) throws {
    /*
     - TODO:
     - A POST request will create a new store in the database.
     - A PUT request will update a store in database
     - A DELETE request will delete item in database
     */
    
    // A GET request will return a list of all store item in the database.
    app.get { req -> EventLoopFuture<View> in
        req.storeCollection.find().flatMap { cursor in
            cursor.toArray()
        }.flatMap { store in
            req.view.render("shop.leaf", ["store": store])
        }
    }
    
    app.get("heloo") { String in
        return "Hello"
    }
    /// Handles a request to load the list of kittens.
    app.get("store") { req -> EventLoopFuture<[Store]> in
        req.storeCollection.find().flatMap { cursor in
            cursor.toArray()
        }
    }
    
    // A POST request will create a new store in the database.
    app.post { req -> EventLoopFuture<Response> in
        let newStore = try req.content.decode(Store.self)
        newStore.createdAt = Date()
        return req.storeCollection.insertOne(newStore).map { _ in Response(status: .created) }
    }
    
    app.post("order") { req -> EventLoopFuture<Response> in
        let newOrder  = try req.content.decode(Order.self)
        return req.orderCollection.insertOne(newOrder).map { _ in Response(status: .created) }
    }
    
    app.get("order") { req -> EventLoopFuture<[Order]> in
        req.orderCollection.find().flatMap { cursor in
            cursor.toArray()
        }
    }
}


