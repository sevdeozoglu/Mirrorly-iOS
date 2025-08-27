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
               Text("Instagram Hesabını Bağla")
                   .font(.title2)
               
               Button(action: {
                   // OAuth bağlantısı başlat
               }) {
                   Text("Instagram ile Bağlan")
                       .frame(maxWidth: .infinity)
                       .padding()
                       .background(Color.purple)
                       .foregroundColor(.white)
                       .cornerRadius(8)
               }
               
               NavigationLink("Bağlandıktan Sonra Devam", destination: AnalysisView())
                   .padding(.top, 40)
           }
           .padding()
       }
   }

#Preview {
    InstagramConnectView()
}
