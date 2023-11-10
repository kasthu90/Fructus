//
//  FruitModel.swift
//  Fructus
//
//  Created by Kasthuri Tandavarayane on 10/11/2023.
//


import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
