import Fluent
import FluentSQLiteDriver
import Leaf
import Vapor


// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
     app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(.sqlite(.file("db.macbook")), as: .sqlite)
    app.databases.use(.sqlite(.memory), as: .sqlite)

    app.migrations.add(MacbookTodo())

    app.views.use(.leaf)
    
    
    // register routes
    try routes(app)
   
}


