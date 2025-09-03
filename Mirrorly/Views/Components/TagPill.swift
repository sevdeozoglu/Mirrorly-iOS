//
//  TagPill.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 9/3/25.
//

import SwiftUI

struct TagPill: View {
    let text: String
    let positive: Bool

    var body: some View {
        Text(text)
            .font(.callout)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(positive ? Color.accentPositive.opacity(0.12)
                                 : Color.accentWarning.opacity(0.12))
            .foregroundColor(positive ? .accentPositive : .accentWarning)
            .cornerRadius(999)
    }
}
