//
//  ItemEditorOverlay.swift
//  TodoList
//
//  Created by Bryce Stryker Haug  on 2/27/26.
//

import SwiftUI

struct ItemEditorOverlay: View {
    @State var title: String = ""
    @State var desc: String = ""
    @State var selectedStatus: ItemStatus = .notStarted
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Color.black
                    .opacity(0.4)
                    .ignoresSafeArea()
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: geo.size.width * 0.8, height: geo.size.height * 0.6)
                    .shadow(radius: 10)
                    .overlay {
                        
                    }
            }
        }
    }
    func EditorContent() -> some View {
        return VStack {
            EditableTextField(text: $title)
            TextEditor(text: $desc)
            Picker("Status", selection: $selectedStatus){
                ForEach(ItemStatus.allCases, id:\.self) { status in
                    Text(status.rawValue)
                        .tag(status)
                }
            }
        }
    }
}
#Preview {
    homepage()
}

