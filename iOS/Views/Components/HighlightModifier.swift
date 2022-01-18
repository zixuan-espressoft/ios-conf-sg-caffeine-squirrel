//
//  HighlightModifier.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct HighlightModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline.bold())
    }
}

extension Text {
    func highlight() -> some View {
        modifier(HighlightModifier())
    }
}
