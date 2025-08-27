//
//  APIService.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import Foundation

class APIService {
    let baseURL = "http://localhost:3000" // backend URL buraya gelecek

    func fetchAnalysis(for posts: [String], completion: @escaping (AnalysisResult?) -> Void) {
        // Backend'e gönderilecek JSON
        let body: [String: Any] = ["posts": posts]

        guard let url = URL(string: "\(baseURL)/analyze") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: body)
        } catch {
            print("JSON hatası: \(error)")
            completion(nil)
            return
        }

        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                print("API hatası: \(error)")
                completion(nil)
                return
            }

            guard let data = data else {
                completion(nil)
                return
            }

            do {
                let result = try JSONDecoder().decode(AnalysisResult.self, from: data)
                completion(result)
            } catch {
                print("Decode hatası: \(error)")
                completion(nil)
            }
        }.resume()
    }
}
