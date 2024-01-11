//
//  ListRowView.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 11.01.24.
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
    ListRowView(title: "This is the first title")
}
