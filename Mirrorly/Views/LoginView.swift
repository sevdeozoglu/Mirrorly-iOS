//
//  ContentView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack (spacing: 20){
            Text("Mirrorly")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Button(action: {
      
            }) {
                Text("Sign in with Google")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            Button(action: {
 
            }) {
                Text("Sign in with Apple")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            NavigationLink("Continue", destination: InstagramConnectView())
                           .padding(.top, 40)
        }
        .padding()
    }
}

#Preview {
    LoginView()
}
