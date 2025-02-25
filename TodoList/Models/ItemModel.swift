//
//  ItemModel.swift
//  TodoList
//
//  Created by Arjun Alukkal on 2025-02-25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
