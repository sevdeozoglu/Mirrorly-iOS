//
//  AnalysisResultView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct AnalysisResultView: View {
    let result : AnalysisResult
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("AI Analiz Sonucu")
                    .font(.largeTitle)
                
                Text("💡 Genel Algı:")
                    .font(.title2)
                Text(result.overallImpression)
                    .multilineTextAlignment(.center)
                    .padding()

                Divider()

                Text("✅ Güçlü Yönler")
                    .font(.headline)
                ForEach(result.strengths, id: \.self) { item in
                    Text("• \(item)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                Divider()

                Text("⚠️ Zayıf Yönler")
                    .font(.headline)
                ForEach(result.weaknesses, id: \.self) { item in
                    Text("• \(item)")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                Divider()

                Text("✨ Bio Önerisi")
                    .font(.headline)
                Text(result.bioSuggestion)
                    .italic()
                    .padding()

                Divider()

                Text("🎨 Renk Paleti")
                    .font(.headline)
                HStack {
                    ForEach(result.colorPalette, id: \.self) { color in
                        Rectangle()
                            .fill(Color(hex: color))
                            .frame(width: 50, height: 50)
                            .cornerRadius(8)
                    }
                }
            }
            .padding()
        }
    }
}

// HEX rengini SwiftUI Color’a çevirmek için extension:
extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}
