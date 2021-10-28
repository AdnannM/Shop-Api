
import Leaf
import MongoDBVapor
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    
    // Use LeafRender for view
    app.views.use(.leaf)
    
    try app.mongoDB.configure(Environment.get("MONGODB_URI") ?? "mongodb+srv://user:password12345@cluster0.v94fl.mongodb.net/myFirstDatabase?retryWrites=true&w=majority")
    
    ContentConfiguration.global.use(encoder: ExtendedJSONEncoder(), for: .json)
    ContentConfiguration.global.use(decoder: ExtendedJSONDecoder(), for: .json)
    
    
    // register routes
    try routes(app)
    
    
}


