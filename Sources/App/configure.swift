    
import Leaf
import MongoDBVapor
import Vapor

/// Configures the application.
public func configure(_ app: Application) throws {
    // Uncomment to serve files from the /Public folder.
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
    
    // Use LeafRenderer for views.
    app.views.use(.leaf)
    
    // Configure the app to connect to a MongoDB deployment. If a connection string is provided via the `MONGODB_URI`
    // environment variable it will be used; otherwise, use the default connection string for a local MongoDB server.
    try app.mongoDB.configure(Environment.get("MONGODB_URI") ?? "mongodb+srv://user:password12345@cluster0.v94fl.mongodb.net/myFirstDatabase?retryWrites=true&w=majority")
    
    // - MongoDB Compass:
    // - mongodb+srv://user:<password>@cluster0.v94fl.mongodb.net/test

    // Use `ExtendedJSONEncoder` and `ExtendedJSONDecoder` for encoding/decoding `Content`. We use extended JSON both
    // here and on the frontend to ensure all MongoDB type information is correctly preserved.
    // See: https://docs.mongodb.com/manual/reference/mongodb-extended-json
    // Note that for _encoding_ content, this encoder only gets used for the REST API methods, since Leaf uses its own
    // custom encoder to encode data for rendering in Leaf views.
    ContentConfiguration.global.use(encoder: ExtendedJSONEncoder(), for: .json)
    ContentConfiguration.global.use(decoder: ExtendedJSONDecoder(), for: .json)

    // Register routes.
    try routes(app)
}
    


