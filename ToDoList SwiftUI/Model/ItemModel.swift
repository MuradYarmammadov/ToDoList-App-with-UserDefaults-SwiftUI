//
//  ItemModel.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 11.01.24.
//

import Foundation


struct ItemModel: Identifiable {
    let id : String = UUID().uuidString
    let title: String
    let isDone: Bool
}
