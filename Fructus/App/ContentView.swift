//
//  ContentView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 9/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    var fruit: [Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()){ item in
                FruitRowView(fruits: item)
                 .padding(.vertical,4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

#Preview {
 ContentView(fruit: fruitsData)
}
