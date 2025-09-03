//
//  ThreeWordLinkView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct ThreeWordLinkView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Describe me in 3 words")
                .font(.title)

            Button("Create a link") {
                
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    ThreeWordLinkView()
}
