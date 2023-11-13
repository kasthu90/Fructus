//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 11/11/2023.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .center, spacing: 20) {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        FruitNutrientsView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
