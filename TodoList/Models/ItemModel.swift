//
//  ItemModel.swift
//  TodoList
//
//  Created by Arjun Alukkal on 2025-02-25.
//

import Foundation

// Immutable struct, because all item using 'let'
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
