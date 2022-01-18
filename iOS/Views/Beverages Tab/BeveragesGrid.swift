//
//  BeveragesGrid.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct BeveragesGrid: View {
    private let beverages: [Beverage] = Beverage.allCases
    
    
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: StylingHelpers.cardSpacing),
        GridItem(.flexible(), spacing: StylingHelpers.cardSpacing)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(beverages) { beverage in
                BeveragesColumn(beverage: beverage)
            }
        }
    }
}

struct BeveragesGrid_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesGrid()
    }
}
