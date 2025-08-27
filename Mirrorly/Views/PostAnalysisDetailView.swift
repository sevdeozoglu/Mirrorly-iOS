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
            Text("Post Analizi")
                .font(.largeTitle)

            Text("📸 Görsel Analizi: Renkler tutarlı, kompozisyon iyi.")
                .multilineTextAlignment(.center)

            Text("📝 Caption Analizi: Dili samimi ama CTA yok.")
                .multilineTextAlignment(.center)

            Text("💡 Öneri: Caption sonuna soru ekle, etkileşimi artır.")
                .multilineTextAlignment(.center)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    PostAnalysisDetailView()
}
