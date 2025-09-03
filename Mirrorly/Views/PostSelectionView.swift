//
//  PostSelectionView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct PostSelectionView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var selectedIDs: Set<Int> = []


    let items: [Int] = Array(0..<12)

  
    let limit = 3
    let onConfirm: (_ selected: [String]) -> Void

    var body: some View {
        VStack(spacing: 16) {
            Text("Select up to \(limit) posts")
                .font(.headline)

            let cols = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
            ScrollView {
                LazyVGrid(columns: cols, spacing: 12) {
                    ForEach(items, id: \.self) { id in
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(uiColor: .secondarySystemBackground))
                                .frame(height: 100)

                            Text("\(id+1)").font(.title)
                        }
                        .overlay(
                         
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(selectedIDs.contains(id) ? Color.blue : .clear, lineWidth: 3)
                        )
                        .onTapGesture {
                            if selectedIDs.contains(id) {
                                selectedIDs.remove(id)
                            } else if selectedIDs.count < limit {
                                selectedIDs.insert(id)
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
            }

            Button("Analyze \(selectedIDs.count)/\(limit)") {
               
                let payload = selectedIDs.sorted().map { "post_\($0)" }
                onConfirm(payload)
                dismiss()
            }
            .buttonStyle(PrimaryButtonStyle())
            .disabled(selectedIDs.isEmpty)

        }.padding(16)
        .navigationTitle("Post Selection")
        .navigationBarTitleDisplayMode(.inline)
    }
}
