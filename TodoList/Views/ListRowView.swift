//
//  ListRowView.swift
//  TodoList
//
//  Created by Arjun Alukkal on 2025-02-24.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "This is the first title!")
}
