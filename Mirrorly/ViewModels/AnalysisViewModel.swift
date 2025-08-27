//
//  AnalysisViewModel.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import Foundation

class AnalysisViewModel: ObservableObject {
    @Published var result: AnalysisResult?
    @Published var isLoading = false
    
    private let apiService = APIService()

    func analyze(posts: [String]) {
        isLoading = true
        apiService.fetchAnalysis(for: posts) { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                self?.result = result
            }
        }
    }
}
