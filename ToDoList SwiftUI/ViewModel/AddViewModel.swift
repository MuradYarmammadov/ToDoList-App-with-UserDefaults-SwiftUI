//
//  AddViewModel.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 16.01.24.
//

import Foundation
import SwiftUI

class AddViewModel: ObservableObject {
    
//    @EnvironmentObject var listViewModel: ListViewModel
    
    @Environment(\.presentationMode) var presentationMode
    var listViewModel: ListViewModel
    
    init(listViewModel: ListViewModel) {
        self.listViewModel = listViewModel
    }
    
    @Published var alertTitle: String = ""
    @Published var showAlert: Bool = false
    @Published var textFieldText: String = ""

    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Must be at least three charachters long 🙄"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}
