//
//  InsightsView.swift
//  Caffeine Squirrel (macOS)
//
//  Created by Malin Sundberg on 2022-01-15.
//

import SwiftUI

struct InsightsView: View {
    @ObservedObject var beverageStore: BeverageStore
    
    @State private var selectedBeverageCountValue: ChartValue? = nil
    @State private var selectedCaffeineCountValue: ChartValue? = nil


    
    private var beverageCountValues: [ChartValue] {
        beverageStore.dailyBeverages.map { dailyBeverages in
            ChartValue(id: dailyBeverages.id, value: Double(dailyBeverages.beverages.count))
        }
    }
    
    private var caffineCountValues: [ChartValue] {
        beverageStore.dailyBeverages.map { dailyBeverages in
            ChartValue(id: dailyBeverages.id, value: Double(dailyBeverages.totalCaffeine))
        }
    }
    
    private var beveragesHighlight: String {
        let totalValue: Int
        if let selectedValue = selectedBeverageCountValue,
           let selectedDay = beverageStore.dailyBeverages.first(where: { $0.id == selectedValue.id }) {
            totalValue = selectedDay.beverages.count
        } else {
            totalValue = beverageStore.totalBeverages
        }
        return totalValue == 1 ? "\(totalValue.formatted()) cup" : "\(totalValue.formatted()) cups"
    }
    
    private var caffeineHighlight: String {
        let totalValue: Double
        if let selectedValue = selectedCaffeineCountValue,
           let selectedDay = beverageStore.dailyBeverages.first(where: { $0.id == selectedValue.id }) {
            totalValue = selectedDay.totalCaffeine
        } else {
            totalValue = beverageStore.totalCaffeine
        }
        return "\(totalValue.formatted()) mg"
    }
    
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                ChartView(values: beverageCountValues, color: Color.chartColor1, yAxisName: "Beverages", xAxisName: "Days", description: "Total", highlight: beveragesHighlight, selectedValue: $selectedBeverageCountValue)
                ChartView(values: beverageCountValues, color: Color.chartColor2, yAxisName: "Caffeine", xAxisName: "Days", description: "Amount", highlight: caffeineHighlight, selectedValue: $selectedCaffeineCountValue)
            }.padding()
        }.background(Color.backgroundColor)
    }
}

struct InsightsView_Previews: PreviewProvider {
    static var previews: some View {
        InsightsView(beverageStore: BeverageStore())
    }
}
