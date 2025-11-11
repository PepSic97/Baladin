//
//  OrderViewModel.swift
//  Baladin
//
//  Created by Giuseppe Sica on 11/11/25.
//

import SwiftUI
import Combine
import Foundation
import CoreData

class OrderViewModel: ObservableObject {
    
    @Published var orders: [OrderItem] = []
    
    private let context = PersistenceController.shared.container.viewContext

    init() {
        fetchOrders()
    }
    
    func fetchOrders() {
        let request = NSFetchRequest<OrderItem>(entityName: "OrderItem")
        if let result = try? context.fetch(request) {
            orders = result
        }
    }
    
    func createOrder(from cartItems: [CartItem]) {
        let order = OrderItem(context: context)
        order.id = UUID()
        order.date = Date()
        order.total = cartItems.reduce(0) { $0 + $1.price }
        
        let ids = cartItems.map { $0.id?.uuidString ?? "" }
        let encoded = try! JSONEncoder().encode(ids)
        order.productsIds = encoded.base64EncodedString()
        
        save()
        fetchOrders()
    }
    
    private func save() {
        try? context.save()
    }
}
