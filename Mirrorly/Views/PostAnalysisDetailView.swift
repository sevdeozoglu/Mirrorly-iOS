//
//  PostAnalysisDetailView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct PostAnalysisDetailView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Post Analysis")
                .font(.largeTitle)

            Text("Visual Analysis: Colors are good, composition is good.")
                .multilineTextAlignment(.center)

            Text("Caption Analysis: Language is warm but there is not CTA.")
                .multilineTextAlignment(.center)

            Text("Suggestion: Add a question in caption.")
                .multilineTextAlignment(.center)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    PostAnalysisDetailView()
}
