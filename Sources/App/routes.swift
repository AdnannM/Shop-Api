import Fluent
import Vapor
import RoutingKit

func routes(_ app: Application) throws {
    
    
//
//    var person = [Person]()
//
//     app.post("person") { req -> String in
//         let task = try req.content.decode(Person.self)
//         person.append(task)
//
//         return "Task Added"
//     }
//
//     app.get("person") { req in
//         return person
//     }
    
//    
    app.get("store") { req -> Macbooks in

        let person = Macbooks(name: "MacbookPro", model: "Space Gray", cpu: "M1Apple M1 Chip Pro", price: 1999)
        return person
        

    }
    
    app.get { req -> EventLoopFuture<View> in
        
        let person = Macbooks(name: "Macbook Pro", model: "Space Gray", cpu: "Apple M1 Chip Max", price: 2999)
        let personOne = Macbooks(name: "Macbook Air", model: "Silver", cpu: "Apple M1 Chip", price: 999)
        
        return  req.view.render("shop", ["stores":[person, personOne]])
    }
    
    try app.register(collection: TodoController())
}
