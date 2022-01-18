//
//  PrimaryButtonStyle.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .overlay(configuration.isPressed ? Color.primary.opacity(0.1).clipShape(StylingHelpers.cardClipShape) : nil)
    }
}
