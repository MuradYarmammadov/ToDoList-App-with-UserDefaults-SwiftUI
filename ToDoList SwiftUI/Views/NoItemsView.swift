//
//  NoItemsView.swift
//  ToDoList SwiftUI
//
//  Created by Murad Yarmamedov on 17.01.24.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10){
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Click Add button and start making your ToDo list 📑")
                    .padding(.bottom, 20)
                NavigationLink(destination: AddView()) {
                    Text("Add something 🤩")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secondaryAccentColor : Color.accentColor)
                        .cornerRadius(10)
                }
                .padding(.horizontal, animate ? 30 : 40)
                .shadow(
                    color: animate ? secondaryAccentColor.opacity(0.6) : Color.accentColor.opacity(0.6),
                    radius: animate ? 30 : 10,
                    x: 0,
                    y: animate ? 20 : 10)
                .scaleEffect(animate ? 1.1 : 1)
                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else {return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
    
}

#Preview {
    NavigationStack {
        NoItemsView()
            .navigationTitle("ToDo List  📝")
    }
}
