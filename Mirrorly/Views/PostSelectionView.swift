//
//  PostSelectionView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct PostSelectionView: View {
    @State private var selectedPosts: [Int] = []
    let mockPosts = Array(1...10) // Şimdilik 10 sahte post

    var body: some View {
        VStack {
            Text("Post Seç (3-5 adet)")
                .font(.title2)

            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(mockPosts, id: \.self) { post in
                        Button(action: {
                            if selectedPosts.contains(post) {
                                selectedPosts.removeAll { $0 == post }
                            } else {
                                if selectedPosts.count < 5 {
                                    selectedPosts.append(post)
                                }
                            }
                        }) {
                            ZStack {
                                Rectangle()
                                    .fill(selectedPosts.contains(post) ? Color.green : Color.gray)
                                    .frame(height: 100)
                                Text("Post \(post)")
                                    .foregroundColor(.white)
                            }
                        }
                    }
                }
                .padding()
            }

            NavigationLink("Analiz Et", destination: PostAnalysisDetailView())
                .padding()
                .disabled(selectedPosts.count < 3)
        }
        .padding()
    }
}

#Preview {
    PostSelectionView()
}
