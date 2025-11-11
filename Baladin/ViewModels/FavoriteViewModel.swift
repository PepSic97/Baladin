//
//  FavoriteViewModel.swift
//  Baladin
//
//  Created by Giuseppe Sica on 11/11/25.
//

import SwiftUI
import Combine
import Foundation
import CoreData

class FavoriteViewModel: ObservableObject {
    
    @Published var favorites: [FavoriteItem] = []
    
    private let context = PersistenceController.shared.container.viewContext

    init() {
        fetchFavorites()
    }
    
    func fetchFavorites() {
        let request = NSFetchRequest<FavoriteItem>(entityName: "FavoriteItem")
        if let result = try? context.fetch(request) {
            favorites = result
        }
    }
    
    func toggleFavorite(_ product: Product) {
        if let existing = favorites.first(where: { $0.id == product.id }) {
            context.delete(existing)
        } else {
            let fav = FavoriteItem(context: context)
            fav.id = product.id
            fav.name = product.name
            fav.imageUrl = product.imageUrl
            fav.price = product.price
        }
        save()
        fetchFavorites()
    }
    
    private func save() {
        try? context.save()
    }
}
