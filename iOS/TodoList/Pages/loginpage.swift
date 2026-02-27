//
//  loginpage.swift
//  TodoList
//
//  Created by Bryce Stryker Haug  on 2/27/26.
//

import SwiftUI

struct loginpage: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            Spacer()
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .bold()
                .font(.largeTitle)
            Text("Create by: Bryce Haug")
                .italic()
                .padding(.bottom)
            Spacer()
            VStack (spacing: 40){
                TextField("Email", text: $email)
                SecureField("Password", text: $password)
                Button {
                    
                } label: {
                    Text("Login")
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    loginpage()
}
