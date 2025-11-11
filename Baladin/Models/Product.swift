//
//  Product.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import Foundation

struct Product: Identifiable, Hashable {
    let id: UUID
    let name: String
    let imageUrl: String
    let isChristmas: Bool
    let category: String
    let price: Double
    let description: String
}
