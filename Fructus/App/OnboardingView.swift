//
//  OnboardingView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 10/11/2023.
//

import SwiftUI

struct OnboardingView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
           }
        }
        .tabViewStyle(PageTabViewStyle()) // this style used to scroll to different tab
        .padding(.vertical,20)
    }
}

#Preview {
    OnboardingView()
}
