

import FluentSQLiteDriver
import Fluent
import Leaf
import Vapor



let directoryConfig = DirectoryConfiguration.detect()

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    app.databases.use(.sqlite(.file("\(directoryConfig.workingDirectory)store.db")), as: .sqlite)
    app.middleware.use(ErrorMiddleware.default(environment: app.environment))
    
    app.migrations.add(MacbookTodo())
    try app.autoMigrate().wait()
    
    app.views.use(.leaf)
    
    

    
    // register routes
    try routes(app)
    
    
}


