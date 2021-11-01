import MongoDBVapor
import Vapor



extension Request {
    /// Convenience accessor for the home.kittens collection.
    var storeCollection: MongoCollection<Store> {
        self.mongoDB.client.db("storeDb").collection("store", withType: Store.self)
    }
}

func routes(_ app: Application) throws {
    // A GET request will return a list of all kittens in the database.
    app.get { req -> EventLoopFuture<View> in
        req.storeCollection.find().flatMap { cursor in
            cursor.toArray()
        }.flatMap { store in
            req.view.render("shop.leaf", ["store": store])
        }
    }

    // A POST request will create a new kitten in the database.
    app.post { req -> EventLoopFuture<Response> in
        let newStore = try req.content.decode(Store.self)
        
        return req.storeCollection.insertOne(newStore)
            .map { _ in Response(status: .created) }
    }
}

