//
//  BeveragesGrid.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct BeveragesGrid: View {
    @ObservedObject
    var beverageStore: BeverageStore
    
    private let beverages: [Beverage] = Beverage.allCases
    
    
    private let columns: [GridItem] = [
        GridItem(.flexible(), spacing: StylingHelpers.cardSpacing),
        GridItem(.flexible(), spacing: StylingHelpers.cardSpacing)
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(beverages) { beverage in
                Button {
                    
                } label: {
                    BeveragesColumn(beverage: beverage)
                }.buttonStyle(PrimaryButtonStyle())

            }
        }
    }
}

struct BeveragesGrid_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesGrid(beverageStore: BeverageStore())
    }
}
