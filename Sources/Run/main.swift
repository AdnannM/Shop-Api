
import MongoDBVapor
import Vapor
import App

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)

let app = Application(env)
try configure(app)

let elg = MultiThreadedEventLoopGroup(numberOfThreads: 4)



defer {
    // Cleanup the application's MongoDB data.
    app.mongoDB.cleanup()
    // Clean up the driver's global state. The driver will no longer be usable from this program after this method is
    // called.
<<<<<<< HEAD
   // cleanupMongoSwift()
    
=======
    cleanupMongoSwift()
>>>>>>> test
    app.shutdown()

}

try app.run()
