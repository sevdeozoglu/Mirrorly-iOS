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

                NavigationLink("General Analysis Result", destination: AnalysisResultView(result: MockData.sampleAnalysis))
                NavigationLink("Post Based Analysis", destination: PostSelectionView{ selected in
                    print("Selected posts:", selected)

                })
                NavigationLink("3 words Link", destination: ThreeWordLinkView())

                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    DashboardView()
}
