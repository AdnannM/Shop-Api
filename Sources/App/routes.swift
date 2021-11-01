<<<<<<< HEAD

=======
//
//
//import RoutingKit
//import Vapor
//
///// Register your application's routes here.
/////
///// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
//public func routes(_ router: Routes) throws {
//    router.get("hello") { req in
//        return "Hello, world!"
//    }
//}
//
//


import Fluent
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
import Vapor
import SQLiteKit
import FluentSQLiteDriver
import Foundation
import MongoDBVapor
import Network

extension Request {
    var storeCollection: MongoCollection<Store> {
        self.mongoDB.client.db("storeDb").collection("store", withType: Store.self)
    }
}

//    app.get("store") { req -> Macbooks in
//        
//    }

    app.get { req -> EventLoopFuture<View> in

<<<<<<< HEAD
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
    
    app.post { req -> EventLoopFuture<Response> in
        let newStore = try req.content.decode(Store.self)
        return req.storeCollection.insertOne(newStore).map { _ in Response(status: .created) }
    }
    
    
=======
        let person = Macbooks           (name: "Macbook Pro",
                                         model: "Space Gray",
                                         cpu: "Apple M1 Chip Max",
                                         price: 2999)

<<<<<<< HEAD
        return  req.view.render("shop", ["stores":[person]])
        
        
    }

<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
//    app.get("store") { req -> Macbooks in
//        
//    }

<<<<<<< HEAD
<<<<<<< HEAD
    app.get { req -> EventLoopFuture<View> in
<<<<<<< HEAD
=======
//    app.get("store") { req -> Macbooks in
//        
//    }

    app.get { req -> EventLoopFuture<View> in
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)

        let person = Macbooks           (name: "Macbook Pro",
                                         model: "Space Gray",
                                         cpu: "Apple M1 Chip Max",
                                         price: 2999)

        return  req.view.render("shop", ["stores":[person]])
        
        
    }

<<<<<<< HEAD
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======

=======
    app.get { req -> EventLoopFuture<View> in

<<<<<<< HEAD
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
        let person = Macbooks           (name: "Macbook Pro",
                                         model: "Space Gray",
                                         cpu: "Apple M1 Chip Max",
                                         price: 2999)

=======
//    app.get("store") { req -> Macbooks in
//        
//    }

    app.get { req -> EventLoopFuture<View> in

        let person = Macbooks           (name: "Macbook Pro",
                                         model: "Space Gray",
                                         cpu: "Apple M1 Chip Max",
                                         price: 2999)

>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
        return  req.view.render("shop", ["stores":[person]])
        
        
    }

<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
    // MARK: - Post
//    app.post("add") { req -> EventLoopFuture<Response> in
//        let mac = try req.content.decode(Macbooks.self)
//    }
    
    app.post("add") { req -> Macbooks in
        let mac = try req.content.decode(Macbooks.self)
        return mac
    }
 
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
}



