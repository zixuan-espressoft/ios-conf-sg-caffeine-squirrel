//
//  BeveragesView.swift
//  Caffeine Squirrel (iOS)
//
//  Created by Sean Espressoft on 18/01/2022.
//

import SwiftUI

struct BeveragesView: View {
    var body: some View {
        ScrollView {
            BeveragesGrid().padding()
        }.background(.background)
        
    }
}

struct BeveragesView_Previews: PreviewProvider {
    static var previews: some View {
        BeveragesView()
    }
}
