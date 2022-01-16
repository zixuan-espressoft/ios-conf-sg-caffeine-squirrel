//
//  BeveragesView.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct BeveragesView: View {
    @ObservedObject var beverageStore: BeverageStore
    
    private var todaysBeverageCount: String {
        let beverageCount = beverageStore.dailyBeverages.last?.beverages.count ?? 0
        let description = beverageCount == 1 ? "cup" : "cups"
        
        return "\(beverageCount) \(description)"
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: StylingHelpers.cardSpacing) {
                DailyBeverageInfoView(title: "Today's Beverages", highlight: todaysBeverageCount)
                    .padding(.top)
                
                BeveragesGrid(beverageStore: beverageStore, beverages: Beverage.allCases)
                    .padding(.bottom)
            }.padding(.horizontal)
        }.background(Color.backgroundColor)
    }
}

struct BeveragesView_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesView(beverageStore: BeverageStore())
    }
}
