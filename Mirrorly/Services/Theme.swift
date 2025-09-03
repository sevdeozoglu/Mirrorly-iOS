//
//  Theme.swift
//  Mirrorly
//
//  Created by Sevde Ozoglu on 9/2/25.
//

import SwiftUI

enum Theme {
    static let radius: CGFloat = 16
    static let spacing: CGFloat = 16
    static let shadow = Color.black.opacity(0.05)
}

extension Font {
    static let titleXL = Font.system(size: 28, weight: .bold, design: .rounded)
    static let titleM  = Font.system(size: 18, weight: .semibold, design: .rounded)
}
