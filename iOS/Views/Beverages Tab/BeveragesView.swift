//
//  BeveragesView.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct BeveragesView: View {
    @StateObject
    private var beverageStore = BeverageStore()
    private var todayBevCount: String {
        let bevCount = beverageStore.dailyBeverages.last?.beverages.count ?? 0
        let description = bevCount <= 1 ? "cup" : "cups"
        
        return "\(bevCount) \(description)"
    }
    
    var body: some View {
        ScrollView {
            VStack{
                DailyBeverageInfoView(title: "Today's Beverages", highlight: todayBevCount)
                BeveragesGrid(beverageStore: beverageStore).padding()
            }.padding()
            
        }
        .background(.background)
        
    }
}

struct BeveragesView_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesView()
    }
}
