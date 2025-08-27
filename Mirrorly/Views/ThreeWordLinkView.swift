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
            Text("3 Kelimeyle Beni Anlat")
                .font(.title)

            Button("Link Oluştur") {
                // Burada paylaşılacak link oluşturulacak
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
