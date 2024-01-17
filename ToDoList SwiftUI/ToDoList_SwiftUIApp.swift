//
//  ToDoList_SwiftUIApp.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 11.01.24.
//

import SwiftUI

@main
struct ToDoList_SwiftUIApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
