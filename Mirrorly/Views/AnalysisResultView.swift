//
//  AnalysisResultView.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 7/27/25.
//

import SwiftUI

struct AnalysisResultView: View {
    let result: AnalysisResult
    
    @State private var showPostPicker = false
    @State private var selectedPosts: [String] = []

    var body: some View {
        ScrollView {
            VStack(spacing: Theme.spacing) {

            
                VStack(alignment: .leading, spacing: 6) {
                    Text("AI Analysis")
                        .font(.titleXL)
                        .foregroundColor(.textPrimary)
                    Text("Overview & actionable suggestions")
                        .foregroundColor(.textSecondary)
                }

             
                Card("Overall Impression") {
                    Text(result.overallImpression)
                        .foregroundColor(.textPrimary)
                        .fixedSize(horizontal: false, vertical: true)
                }

          
                HStack(alignment: .top, spacing: Theme.spacing) {
                    Card("Strengths") {
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(result.strengths, id: \.self) { s in
                                TagPill(text: s, positive: true)
                            }
                        }
                    }
                    Card("Weaknesses") {
                        VStack(alignment: .leading, spacing: 8) {
                            ForEach(result.weaknesses, id: \.self) { w in
                                TagPill(text: w, positive: false)
                            }
                        }
                    }
                }

           
                Card("Bio Suggestion") {
                    Text(result.bioSuggestion)
                        .italic()
                        .foregroundColor(.textPrimary)
                }

             
                Card("Color Palette") {
                    HStack(spacing: 12) {
                        ForEach(result.colorPalette, id: \.self) { hex in
                            Rectangle()
                                .fill(Color(hex: hex))
                                .frame(width: 56, height: 56)
                                .cornerRadius(12)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color.accentBorder)
                                )
                        }
                    }
                }

               
                Button("Analyze Selected Posts") {
                                    showPostPicker = true
                                }
                                .buttonStyle(PrimaryButtonStyle())
                            }
                            .padding(20)
                        }
                        .background(Color.white.ignoresSafeArea())

              
                        .sheet(isPresented: $showPostPicker) {
                            NavigationStack {
                                PostSelectionView { selected in
                     
                                    selectedPosts = selected
                                 
                                    print("Selected posts:", selected)
                                }
                                .navigationTitle("Post Selection")
                                .navigationBarTitleDisplayMode(.inline)
                            }
                        }
                    }
                }
