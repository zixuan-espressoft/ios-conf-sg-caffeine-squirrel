//
//  HighlightView.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct HighlightView: View {
    let description: String
    let highlight: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(description)
                .details()
            Text(highlight)
                .highlight()
        }
    }
}

struct HighlightView_Previews: PreviewProvider {
    static var previews: some View {
        HighlightView(description: "Size", highlight: "8 oz")
    }
}
