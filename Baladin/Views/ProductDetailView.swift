//
//  ProductDetailView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import SwiftUI

struct ProductDetailView: View {
    
    let product: Product
    
    @EnvironmentObject var cart: CartViewModel
    @StateObject private var viewModel = ProductDetailViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            asyncImageView()
            productName()
            productDescription()
            productPrice()
            cartButton()
            Spacer()
        }
        .padding()
    }
}

extension ProductDetailView {
    @ViewBuilder
    private func asyncImageView() -> some View {
        AsyncImage(url: URL(string: product.imageUrl)) { image in
            image.resizable().aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .frame(height: 300)
    }
    
    @ViewBuilder
    private func productName() -> some View {
        Text(product.name)
            .font(.title2)
            .bold()
        
    }
    
    @ViewBuilder
    private func productDescription() -> some View {
        Text(product.description)
            .padding()
    }
    
    @ViewBuilder
    private func productPrice() -> some View {
        Text("€\(String(format: "%.2f", product.price))")
            .font(.title3)
            .foregroundColor(.baladinGold)
    }
    
    @ViewBuilder
    private func cartButton() -> some View {
        Button(action: {
            cart.addToCart(product)
            viewModel.addedToCart = true
        }) {
            Text(viewModel.addedToCart ? "Aggiunto al carrello" : "Aggiungi al carrello")
                .frame(maxWidth: .infinity)
                .padding()
                .background(viewModel.addedToCart ? Color.baladinDarkBrown : Color.baladinGold)
                .foregroundColor(.baladinCream)
                .cornerRadius(10)
        }
        .padding(.horizontal)

    }
}
