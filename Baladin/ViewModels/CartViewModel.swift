//
//  CartViewModel.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import Foundation
import Combine
import SwiftUI
import CoreData

class CartViewModel: ObservableObject {
    
    @Published var items: [CartItem] = []
    
    private let context = PersistenceController.shared.container.viewContext

    init() {
        fetchItems()
    }
    
    func fetchItems() {
        let request = NSFetchRequest<CartItem>(entityName: "CartItem")
        request.sortDescriptors = []
        
        if let result = try? context.fetch(request) {
            items = result
        }
    }
    
    func addToCart(_ product: Product) {
        let item = CartItem(context: context)
        item.id = product.id
        item.name = product.name
        item.imageUrl = product.imageUrl
        item.price = product.price
        save()
        fetchItems()
    }
    
    func removeFromCart(_ item: CartItem) {
        context.delete(item)
        save()
        fetchItems()
    }
    
    func clearCart() {
        items.forEach { context.delete($0) }
        save()
        fetchItems()
    }
    
    private func save() {
        try? context.save()
    }
}
