//
//  homepage.swift
//  TodoList
//
//  Created by Bryce Stryker Haug  on 2/27/26.
//

import SwiftUI

struct homepage: View {
    var body: some View {
        VStack {
            Header()
            Spacer()
            List(mockTodoItems) {item in
                HStack {
                    Circle()
                        .frame(width: 40, height: 40)
                    Text(item.title)
                    Spacer()
                    Image(systemName: "arrow.right")
                }
            }
            
        }.overlay {
            ItemEditorOverlay()
        }
    }
    
    func Header() -> some View {
        return HStack {
            Menu {
            Button(role: .destructive) {
                    
                } label: {
                    Label("Logout", image: "rectangle .portrait.and.arrow.right")
                }
            } label: {
                Image(systemName: "person.crop.circle")
                    .font(.title)
            }
            Spacer()
            Image(systemName: "plus.circle")
                .font(.title)
        }
    }
}

#Preview {
    homepage()
}
