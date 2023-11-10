//
//  OnboardingView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 10/11/2023.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle()) // this style used to scroll to different tab
        .padding(.vertical,20)
    }
}

#Preview {
    OnboardingView()
}
