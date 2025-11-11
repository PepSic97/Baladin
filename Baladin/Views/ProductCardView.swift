//
//  ProductCardView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import SwiftUI

struct ProductCardView: View {
    let product: Product
    
    var body: some View {
        NavigationLink(destination: ProductDetailView(product: product)) {
            VStack {
                asyncImageView()
                productName()
                productPrice()
            }
            .frame(width: 150)
            .padding(5)
            .background(Color.baladinCream)
            .cornerRadius(10)
        }
    }
}

extension ProductCardView {
    @ViewBuilder
    private func asyncImageView() -> some View {
        AsyncImage(url: URL(string: product.imageUrl)) { image in
            image.resizable().aspectRatio(contentMode: .fit)
        } placeholder: {
            ProgressView()
        }
        .frame(width: 150, height: 150)
    }
    
    @ViewBuilder
    private func productName() -> some View {
        Text(product.name)
            .font(.caption)
            .multilineTextAlignment(.center)
            .foregroundColor(.baladinDarkBrown)
    }
    
    @ViewBuilder
    private func productPrice() -> some View {
        Text("€\(String(format: "%.2f", product.price))")
            .font(.caption2)
            .foregroundColor(.baladinGold)
    }
}
