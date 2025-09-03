//
//  InstagramConnectView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct InstagramConnectView: View {
  
    var body: some View {
           VStack(spacing: 20) {
               Text("Connect your Instagram account")
                   .font(.title2)
               
               Button(action: {
                   
               }) {
                   Text("Connect with Instagram")
                       .frame(maxWidth: .infinity)
                       .padding()
                       .background(Color.purple)
                       .foregroundColor(.white)
                       .cornerRadius(8)
               }
               
               NavigationLink("Continue after the connection", destination: AnalysisView())
                   .padding(.top, 40)
           }
           .padding()
       }
   }

#Preview {
    InstagramConnectView()
}
