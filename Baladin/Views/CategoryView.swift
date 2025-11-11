//
//  CategoryView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//

import SwiftUI

struct CategoryView: View {
    let title: String
    let products: [Product]
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                titleView()
                
                if products.isEmpty {
                    unavailableProductView()
                } else {
                   productsCardsView()
                }
            }
        }
    }
}

extension CategoryView {
    @ViewBuilder
    private func titleView() -> some View {
        Text(title)
            .font(.largeTitle)
            .bold()
            .padding()

    }
    
    @ViewBuilder
    private func unavailableProductView() -> some View {
        Text("Nessun prodotto disponibile")
            .padding()
    }
    
    @ViewBuilder
    private func productsCardsView() -> some View {
        LazyVStack {
            ForEach(products) { product in
                ProductCardView(product: product)
            }
        }
    }
}
