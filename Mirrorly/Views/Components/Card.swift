//
//  Card.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 9/3/25.
//

import SwiftUI

struct Card<Content: View>: View {
    let title: String?
    @ViewBuilder var content: Content

    init(_ title: String? = nil, @ViewBuilder content: () -> Content) {
        self.title = title
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            if let title {
                Text(title)
                    .font(.titleM)
                    .foregroundColor(.textPrimary)
            }
            content
        }
        .padding(16)
        .background(Color.surfaceCard)
        .cornerRadius(Theme.radius)
        .shadow(color: Theme.shadow, radius: 12, x: 0, y: 4)
        .overlay(
            RoundedRectangle(cornerRadius: Theme.radius)
                .stroke(Color.accentBorder)
        )
    }
}
