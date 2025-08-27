//
//  AnalysisResult.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import Foundation

struct AnalysisResult: Codable {
    let overallImpression: String
    let strengths: [String]
    let weaknesses: [String]
    let bioSuggestion: String
    let colorPalette: [String]
}
