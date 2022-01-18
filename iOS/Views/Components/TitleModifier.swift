//
//  TitleModifier.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI


struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3.bold())
            .foregroundColor(Color.backgroundColor)
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
                            .fill(Color.accentColor))
            
    }
}

extension Text {
    func title() -> some View {
        modifier(TitleModifier())
    }
}
