//
//  ListRowView.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 11.01.24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isDone ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isDone ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}
#Preview {
    Group{
        ListRowView(item: ItemModel(title: "First", isDone: true))
        ListRowView(item: ItemModel(title: "Second", isDone: false))
    }
}
