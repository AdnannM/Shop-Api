//
//  File.swift
//  
//
//  Created by Adnann Muratovic on 29.10.21.
//
//
//
//import Foundation
//import Vapor
//
//struct Store: RouteCollection {
//    func boot(routes: RoutesBuilder) throws {
//        let store = routes.grouped("store")
//        store.get(use: index)
////        store.post(use: create)
////        store.put(use: update)
////        gamstorees.delete(use: delete)
//    }
//    
//    // GET Request /games route
//    func index(req: Request) throws -> EventLoopFuture<[Store]> {
//        return Store.query(on: req.mongoDB).all()
//    }
    
//    // POST Request /games route
//    func create(req: Request) throws -> EventLoopFuture<HTTPStatus> {
//        let store = try req.content.decode(Store.self)
//        return store.save(on: req.mongoDB).transform(to: .ok)
//    }
//
//    // PUT Request /games route
//    func update(req: Request) throws -> EventLoopFuture<[Store]> {
//
//    }
//
//    // DELETE Request /games route
//    func delete(req: Request) throws -> EventLoopFuture<[Store]> {
//        let storeId = req.parameters.next(Int.self)
//        return Store.find(gameId, on: req.db).flatMap { maybeItem in
//            guard let store = maybeItem else {
//                throw Abort(.notFound)
//            }
//
//            return store.delete(on: req).map {
//                return "Deleted Imte \(storeId)"
//            }
//        }
//    }
//}
