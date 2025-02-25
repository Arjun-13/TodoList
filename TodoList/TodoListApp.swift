//
//  TodoListApp.swift
//  TodoList
//
//  Created by Arjun Alukkal on 2025-02-24.
//

import SwiftUI


/*

MVVM ARCHITECTURE
 Model - Data point
 View - UI
 ViewModel - Manages model for views
*/

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationTitle("TODO")
        }
    }
}
