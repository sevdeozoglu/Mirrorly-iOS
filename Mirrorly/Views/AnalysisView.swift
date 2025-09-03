//
//  AnalysisView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct AnalysisView: View {
    @StateObject private var viewModel = AnalysisViewModel()

        var body: some View {
            VStack(spacing: 20) {
                if viewModel.isLoading {
                    ProgressView("Analyzing")
                } else if let result = viewModel.result {
                    NavigationLink("See the result", destination: AnalysisResultView(result: result))
                } else {
                    Button("Start Analysis") {
                        viewModel.analyze(posts: ["post1", "post2"])
                    }
                    .buttonStyle(PrimaryButtonStyle())
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
            }
            .padding()
        }
    }

#Preview {
    AnalysisView()
}
