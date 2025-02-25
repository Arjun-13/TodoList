//
//  ListRowView.swift
//  TodoList
//
//  Created by Arjun Alukkal on 2025-02-24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
    ListRowView(item: ItemModel(title: "Check", isCompleted: false))
        .previewLayout(.fixed(width: .infinity, height: 55))
}

