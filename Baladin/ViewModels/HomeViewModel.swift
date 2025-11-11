//
//  HomeViewModel.swift
//  Baladin
//
//  Created by Giuseppe Sica on 11/11/25.
//


import SwiftUI
import Combine
import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var selectedCategory: MenuCategory = .home
    
    var beers: [Product] {
        ProductData.shared.products.filter { $0.category == "Beer" }
    }
    
    var foods: [Product] {
        ProductData.shared.products.filter { $0.category == "Food" }
    }
    
    var christmas: [Product] {
        ProductData.shared.products.filter { $0.isChristmas }
    }
}
