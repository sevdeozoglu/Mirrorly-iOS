//
//  MockData.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import Foundation

struct MockData {
    static let sampleAnalysis = AnalysisResult(
        overallImpression: "Sen dışarıdan yaratıcı, enerjik ama biraz dağınık bir imaj veriyorsun.",
        strengths: [
            "Eğlenceli ve samimi dil kullanımı",
            "Renkli ve dikkat çekici görseller"
        ],
        weaknesses: [
            "Caption'larda CTA eksik",
            "Profil bio net değil"
        ],
        bioSuggestion: "🌟 Yaratıcı içerikler | 🎥 Moda & Lifestyle | 📍 NYC",
        colorPalette: ["#FF6B81", "#F7C59F", "#6BCB77"]
    )
}
