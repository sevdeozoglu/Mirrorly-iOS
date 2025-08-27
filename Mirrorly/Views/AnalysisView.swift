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
                    ProgressView("Analiz Ediliyor...")
                } else if let result = viewModel.result {
                    NavigationLink("Sonuçları Gör", destination: AnalysisResultView(result: result))
                } else {
                    Button("AI Analiz Başlat") {
                        viewModel.analyze(posts: ["post1", "post2"]) // Gerçek veri sonra gelecek
                    }
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
