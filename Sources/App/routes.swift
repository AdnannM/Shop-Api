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

func routes(_ app: Application) throws {


    app.get { req -> String in
        return "it WORKS!"
    } 
}
