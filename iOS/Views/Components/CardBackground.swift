//
//  CardBackground.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct CardBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.cardBackgroundColor)
            .clipShape(StylingHelpers.cardClipShape)
            .shadow(color: .black.opacity(0.1), radius: 4)
    }
}


extension View {
    func cardBackground() -> some View {
        modifier(CardBackground())
    }
}
