//
//  DetailsModifier.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct DetailsModified: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline.bold())
            .foregroundColor(Color.gray)
    }
}

extension Text {
    func details() -> some View {
        modifier(DetailsModified())
    }
}
