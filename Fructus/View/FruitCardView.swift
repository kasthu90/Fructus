//
//  FruitCardView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 10/11/2023.
//

import SwiftUI

struct FruitCardView: View {
    
    //Properties
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red:0 , green: 0,blue: 0,opacity: 0.15), radius: 8, x:6, y:8)
                    .scaleEffect(isAnimating ? 1: 0)
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5))
            {
                isAnimating = true
            }
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
}

#Preview {
    FruitCardView(fruit: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
