//
//  DashboardView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Mirrorly Dashboard")
                    .font(.largeTitle)

                NavigationLink("📊 Genel Analiz Sonucu", destination: AnalysisResultView(result: MockData.sampleAnalysis))
                NavigationLink("🖼️ Post Bazlı Analiz", destination: PostSelectionView())
                NavigationLink("🔗 3 Kelime Linki", destination: ThreeWordLinkView())

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    DashboardView()
}
