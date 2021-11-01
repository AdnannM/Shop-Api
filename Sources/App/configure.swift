
<<<<<<< HEAD
<<<<<<< HEAD
=======

import FluentSQLiteDriver
import Fluent
<<<<<<< HEAD
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======

import FluentSQLiteDriver
import Fluent
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
import Leaf
import MongoDBVapor
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    
    // Use LeafRender for view
=======
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
    app.databases.use(.sqlite(.file("\(directoryConfig.workingDirectory)store.db")), as: .sqlite)
    app.middleware.use(ErrorMiddleware.default(environment: app.environment))
    
    app.migrations.add(MacbookTodo())
    try app.autoMigrate().wait()
    
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
=======
>>>>>>> parent of 70f7c7a (- clean code and get ready for mongoDB database)
    app.views.use(.leaf)
    
    try app.mongoDB.configure(Environment.get("MONGODB_URI") ?? "mongodb+srv://user:password12345@cluster0.v94fl.mongodb.net/myFirstDatabase?retryWrites=true&w=majority")
    
    ContentConfiguration.global.use(encoder: ExtendedJSONEncoder(), for: .json)
    ContentConfiguration.global.use(decoder: ExtendedJSONDecoder(), for: .json)
    
    

    

    

    
    // register routes
    try routes(app)
    
    
}


