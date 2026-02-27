//
//  loadingPage.swift
//  TodoList
//
//  Created by Bryce Stryker Haug  on 2/27/26.
//

import SwiftUI

struct loadingPage: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .bold()
                .font(.largeTitle)
            Text("Create by: Bryce Haug")
                .italic()
                .padding(.bottom)
            ProgressView()
        }
    }
}

#Preview {
    loadingPage()
}
