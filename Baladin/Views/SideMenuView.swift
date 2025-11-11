//
//  SideMenuView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import SwiftUI

struct SideMenuView: View {
    @Binding var selectedCategory: MenuCategory
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            categoryHead()
            homeButton()
            beerButton()
            foodButton()
            christmasButton()
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.baladinCream)
        .foregroundColor(.baladinDarkBrown)
    }
    
}

extension SideMenuView {
    @ViewBuilder
    private func categoryHead() -> some View {
        Text("Categorie")
            .font(.headline)
            .bold()
            .padding(.bottom)
    }
    
    @ViewBuilder
    private func homeButton() -> some View {
        Button("Home") {
            selectedCategory = .home
            closeMenu()
        }
    }
    
    @ViewBuilder
    private func beerButton() -> some View {
        Button("Birre") {
            selectedCategory = .beer
            closeMenu()
        }
    }
    
    
    @ViewBuilder
    private func foodButton() -> some View {
        Button("Food") {
            selectedCategory = .food
            closeMenu()
        }
    }
    
    
    @ViewBuilder
    private func christmasButton() -> some View {
        Button("Natale") {
            selectedCategory = .christmas
            closeMenu()
        }
    }
    
    private func closeMenu() {
        withAnimation { showMenu = false }
    }
}
