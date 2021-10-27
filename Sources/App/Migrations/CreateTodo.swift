import Fluent

struct CreateTodo: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("todos")
            .id()
            .field("title", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("todos").delete()
    }
}



struct MacbookTodo: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("macbok")
            .id()
            .field("name", .string, .required)
            .field("model", .string, .required)
            .field("cpu", .string, .required)
            .field("price", .int, .required)
            .create()
    }
    
    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("macbook").delete()
    }
}
