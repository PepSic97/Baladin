//
//  CartView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cart: CartViewModel
    
    var body: some View {
        VStack {
            if cart.items.isEmpty {
                emptyCart()
            } else {
                myCart()
            }
        }
        .navigationTitle("Carrello")
    }
}


extension CartView {
    @ViewBuilder
    private func emptyCart() -> some View {
        Text("Il carrello è vuoto")
            .font(.title2)
            .foregroundColor(.baladinGold)
    }
    
    
    @ViewBuilder
    private func myCart() -> some View {
        List {
            ForEach(cart.items, id: \.self) { item in
                HStack {
                    Text(item.name ?? "")
                    Spacer()
                    Text("€\(String(format: "%.2f", item.price))")
                }
            }
            .onDelete { indexSet in
                indexSet.forEach { idx in
                    let item = cart.items[idx]
                    cart.removeFromCart(item)
                }
            }
        }

    }
}
