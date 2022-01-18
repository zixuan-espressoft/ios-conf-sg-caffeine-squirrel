//
//  AppTabNavigation.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct AppTabNavigation: View {
    @SceneStorage("selectedTab")
    private var selectedTab: Tab = .beverages
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView{
                BeveragesView()
                    .navigationTitle(Tab.beverages.title)
            }.tabItem {
                Label(Tab.beverages.title,
                      systemImage: Tab.beverages.sfSymbol)
            }.tag(Tab.beverages)
            NavigationView{
                Text("Insights")
            }.tabItem {
                Label(Tab.insights.title,
                      systemImage: Tab.insights.sfSymbol)
            }.tag(Tab.insights)
        }
    }
}

struct AppTabNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppTabNavigation()
    }
}
