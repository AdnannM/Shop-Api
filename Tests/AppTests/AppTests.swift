@testable import App
import XCTVapor

final class AppTests: XCTestCase {
    func testFetchKittens() throws {
        let app = Application(.testing)
        defer {
            app.mongoDB.cleanup()
            app.shutdown()
        }
        try configure(app)
        try app.mongoDB.configure("mongodb+srv://user:password12345@cluster0.v94fl.mongodb.net/myFirstDatabase?retryWrites=true&w=majority")

        try app.test(.GET, "", afterResponse: { res in
            XCTAssertEqual(res.status, .ok)
        })
    }
}
