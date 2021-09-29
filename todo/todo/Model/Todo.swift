//
//  Todo.swift
//  todo
//
//  Created by FOI on 14.09.2021..
//

import Foundation

struct Todo: Codable {
    let item: String
    let priority: Int
}

struct Todos: Codable {
    let items: Array<Todo>
}
