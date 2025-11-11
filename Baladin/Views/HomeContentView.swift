//
//  HomeContentView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import SwiftUI

struct HomeContentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                christmasProducts()
                beerProducts()
                foodProducts()
                }
            }
        }
    }


extension HomeContentView {
    @ViewBuilder
    private func christmasProducts() -> some View {
        Text("Prodotti Natalizi")
            .font(.title2)
            .bold()
            .padding(.horizontal)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(ProductData.shared.products.filter { $0.isChristmas }) { product in
                    ProductCardView(product: product)
                }
            }
            .padding(.horizontal)
        }
    }
    
    @ViewBuilder
    private func beerProducts() -> some View {
        Text("Birre")
            .font(.title2)
            .bold()
            .padding([.top, .horizontal])
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(ProductData.shared.products.filter { $0.category == "Beer" }) { product in
                    ProductCardView(product: product)
                }
            }
            .padding(.horizontal)
        }

    }
    
    @ViewBuilder
    private func foodProducts() -> some View {
        Text("Cibo")
            .font(.title2)
            .bold()
            .padding([.top, .horizontal])
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(ProductData.shared.products.filter { $0.category == "Food" }) { product in
                    ProductCardView(product: product)
                }
            }
            .padding(.horizontal)
            
        }
    }
}
