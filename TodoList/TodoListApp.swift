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
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationTitle("TODO")
            .environmentObject(listViewModel)
        }
    }
}
