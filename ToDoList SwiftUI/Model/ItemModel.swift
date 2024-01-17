//
//  ItemModel.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 11.01.24.
//

import Foundation


struct ItemModel: Identifiable, Codable {
    let id : String
    let title: String
    let isDone: Bool
    
    init(id : String = UUID().uuidString, title: String, isDone: Bool) {
        self.id = id
        self.title = title
        self.isDone = isDone
    }
    
    func updateCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, isDone: !isDone)
    }
}
