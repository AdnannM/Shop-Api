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



import Vapor
import Foundation
import MongoDBVapor

func routes(_ app: Application) throws {

    //GET Request


    //POST Request 
    
    
    app.get { req -> String in
        return "it WORKS!"
    } 
}


extension Request {
    var storeCollection: MongoCollection<Store> {
        self.mongoDB.client.db("storeDb").collection("store", withType: Store.self)
    }
}


