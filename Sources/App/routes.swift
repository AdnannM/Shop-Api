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
import Vapor
import SQLiteKit
import FluentSQLiteDriver
import Foundation

func routes(_ app: Application) throws {

//    app.get("store") { req -> Macbooks in
//        
//    }

    app.get { req -> EventLoopFuture<View> in

        let person = Macbooks           (name: "Macbook Pro",
                                         model: "Space Gray",
                                         cpu: "Apple M1 Chip Max",
                                         price: 2999)

        return  req.view.render("shop", ["stores":[person]])
        
        
    }

    // MARK: - Post
//    app.post("add") { req -> EventLoopFuture<Response> in
//        let mac = try req.content.decode(Macbooks.self)
//    }
    
    app.post("add") { req -> Macbooks in
        let mac = try req.content.decode(Macbooks.self)
        return mac
    }
 
}
