//
//  CategoryViewModel.swift
//  Baladin
//
//  Created by Giuseppe Sica on 11/11/25.
//


import SwiftUI
import Combine
import Foundation

class CategoryViewModel: ObservableObject {
    
    @Published var title: String
    @Published var products: [Product]
    
    init(title: String, products: [Product]) {
        self.title = title
        self.products = products
    }
}
