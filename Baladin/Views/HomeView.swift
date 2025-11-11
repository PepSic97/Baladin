//
//  HomeView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import SwiftUI

struct HomeView: View {
    
    @StateObject private var viewModel = HomeViewModel()
    @EnvironmentObject var cart: CartViewModel
    @State private var showMenu = false
    
    var body: some View {
        NavigationView {
            ZStack {
                groupDestinationViews()
                if showMenu {
                    SideMenuView(selectedCategory: $viewModel.selectedCategory,
                                 showMenu: $showMenu)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    showMenuElement()
                }
                
                ToolbarItem(placement: .principal) {
                    logoElement()
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    cartElement()
                    profileElement()
                }
            }
        }
    }
}


extension HomeView {
    @ViewBuilder
    private func groupDestinationViews() -> some View {
        Group {
            switch viewModel.selectedCategory {
            case .home:
                HomeContentView()
            case .beer:
                CategoryView(title: "Birre",
                             products: viewModel.beers)
            case .food:
                CategoryView(title: "Food",
                             products: viewModel.foods)
            case .christmas:
                CategoryView(title: "Prodotti di Natale",
                             products: viewModel.christmas)
            }
        }
    }
    
    @ViewBuilder
    private func showMenuElement() -> some View {
        Button {
            withAnimation { showMenu.toggle() }
        } label: {
            Image(systemName: "line.horizontal.3")
        }
    }
    
    @ViewBuilder
    private func logoElement() -> some View {
        Image("baladinLogo")
            .resizable()
            .frame(width: 40, height: 40)
    }
    
    @ViewBuilder
    private func cartElement() -> some View {
        NavigationLink(destination: CartView()) {
            Image(systemName: "cart")
        }
    }
    
    @ViewBuilder
    private func profileElement() -> some View {
        NavigationLink(destination: ProfileView()) {
            Image(systemName: "person.circle")
        }
    }
}
