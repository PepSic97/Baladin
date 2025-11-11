//
//  ProductDetailViewModel.swift
//  Baladin
//
//  Created by Giuseppe Sica on 11/11/25.
//


import SwiftUI
import Combine
import Foundation

class ProductDetailViewModel: ObservableObject {
    
    @Published var addedToCart = false
    
    func markAsAdded() {
        addedToCart = true
    }
}
