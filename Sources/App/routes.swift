import MongoDBVapor
import Vapor

extension Request {
    /// Convenience accessor for the home.store collection.
    var storeCollection: MongoCollection<Store> {
        self.mongoDB.client.db("storeDb").collection("store", withType: Store.self)
    }
}

func routes(_ app: Application) throws {
    // A GET request will return a list of all store in the database.
    app.get { req -> EventLoopFuture<View> in
        req.storeCollection.find().flatMap { cursor in
            cursor.toArray()
        }.flatMap { store in
            req.view.render("shop.leaf", ["store": store])
        }
    }
    
    /// Handles a request to load the list of store item.
    app.get("store") { req -> EventLoopFuture<[Store]> in
        req.storeCollection.find().flatMap { cursor in
            cursor.toArray()
        }
    }

    // A POST request will create a new store in the database.
    app.post { req -> EventLoopFuture<Response> in
        let newStore = try req.content.decode(Store.self)
        
        return req.storeCollection.insertOne(newStore)
            .map { _ in Response(status: .created) }
    }
    
}

