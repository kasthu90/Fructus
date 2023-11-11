//
//  FruitRowView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 10/11/2023.
//

import SwiftUI

struct FruitRowView: View {
    var fruits: Fruit
    var body: some View {
        HStack{
            Image(fruits.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.3), radius: 3, x:2, y:2)
                .background(
                    LinearGradient(gradient: Gradient(colors: (fruits.gradientColors)), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruits.title)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruits: fruitsData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
