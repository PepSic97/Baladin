//
//  BaladinApp.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//

import SwiftUI
import CoreData

@main
struct BaladinApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject var cartVM = CartViewModel()
    @StateObject var favoritesVM = FavoriteViewModel()
    @StateObject var ordersVM = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(cartVM)
                .environmentObject(favoritesVM)
                .environmentObject(ordersVM)
        }
    }
}
