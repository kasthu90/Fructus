//
//  ContentView.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 9/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    var fruit: [Fruit] = fruitsData
    @State private var isshowingSettings: Bool = false
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruit.shuffled()){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruits: item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isshowingSettings = true
                    })
                {
                    Image(systemName: "slider.horizontal.3")
                }
                    .sheet(isPresented: $isshowingSettings) {
                        SettingsView()
                    }
            )
        }
        .navigationViewStyle(StackNavigationViewStyle()) //to fix the content size in ipad added this line
    }
}

#Preview {
    ContentView(fruit: fruitsData)
}
