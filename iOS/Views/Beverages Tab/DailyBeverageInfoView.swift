//
//  DailyBeverageInfoView.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct DailyBeverageInfoView: View {
    let title: String
    let highlight: String
    
    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Text(title)
                    .title()
                Spacer()
            }
            
            HStack {
                Text(highlight)
                    .highlight()
                Spacer()
            }
        }.padding()
        .cardBackground()
    }
}

struct DailyBeverageInfoView_Previews: PreviewProvider {
    static var previews: some View {
        DailyBeverageInfoView(title: "Today's Beverages", highlight: "2 cups")
    }
}
