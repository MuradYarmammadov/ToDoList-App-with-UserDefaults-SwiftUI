//
//  AddView.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 11.01.24.
//

import SwiftUI

struct AddView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @ObservedObject var addViewModel: AddViewModel = AddViewModel(listViewModel: ListViewModel())
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack {
                TextField("Add here", text: $addViewModel.textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                
                Button (action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(15)
        }
        .navigationTitle("Add an Item 🖋️")
        .alert(isPresented: $addViewModel.showAlert, content: addViewModel.getAlert)
    }
    
    func saveButtonPressed() {
        if addViewModel.textIsAppropriate() {
            self.listViewModel.addItem(title: addViewModel.textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
}

#Preview {
    NavigationStack{
        AddView()
    }
    .environmentObject(ListViewModel())
}
