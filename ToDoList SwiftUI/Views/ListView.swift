//
//  ListView.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 11.01.24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title",
        "This is second",
        "Third"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List  📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
}

