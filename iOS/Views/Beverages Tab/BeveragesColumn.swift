//
//  BeveragesColumn.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct BeveragesColumn: View {
    let beverage: Beverage
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(beverage.name)
                    .title()
                    
                Spacer()
            }
            HighlightView(description: "Size", highlight: "\(beverage.ounces.formatted()) oz")
            HighlightView(description: "Caffeine", highlight: "\(beverage.caffeine.formatted()) mg")
        }.padding().cardBackground()
    }
}

struct BeveragesColumn_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesColumn(beverage: Beverage.example)
    }
}
