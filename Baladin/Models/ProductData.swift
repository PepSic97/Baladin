//
//  ProductData.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import Foundation

class ProductData {
    static let shared = ProductData()
    
    let products: [Product]
    
    private init() {
        products = [
            Product(id: UUID(),
                    name: "OPEN 2025",
                    imageUrl: "https://cdn.shopify.com/s/files/1/0016/2100/0279/files/OPEN_2025_4_500x500.png?v=1752576041",
                    isChristmas: false, category: "Beer",
                    price: 12.50,
                    description: "Birra artigianale Baladin OPEN 2025, dal gusto intenso."),
            
            Product(id: UUID(),
                    name: "Prodotto 2",
                    imageUrl: "https://cdn.shopify.com/s/files/1/0016/2100/0279/files/FOTO_PRODOTTO_2_500x500.png?v=1751355885",
                    isChristmas: false, category: "Beer",
                    price: 10.00,
                    description: "Birra speciale Baladin, gusto unico."),
            
            Product(id: UUID(),
                    name: "Kit 6 botanic miste 2025",
                    imageUrl: "https://cdn.shopify.com/s/files/1/0016/2100/0279/files/KIT-6botanicmiste-2025_500x500.png?v=1739456687",
                    isChristmas: false, category: "Beer",
                    price: 55.00,
                    description: "Selezione di 6 birre botanic miste."),
            
            Product(id: UUID(),
                    name: "Tutte 6 lattine",
                    imageUrl: "https://cdn.shopify.com/s/files/1/0016/2100/0279/products/TUTTE6lattineICONA_web_500x500.png?v=1629387058",
                    isChristmas: false, category: "Beer",
                    price: 30.00,
                    description: "6 lattine di birra iconica Baladin."),
            
            Product(id: UUID(),
                    name: "Calendario 2025",
                    imageUrl: "https://cdn.shopify.com/s/files/1/0016/2100/0279/files/CALENDARIOSCONTORNATO25_500x500.png?v=1757947583",
                    isChristmas: true, category: "Beer",
                    price: 92.00,
                    description: "Calendario speciale birre Baladin Natale 2025."),
            
            Product(id: UUID(),
                    name: "Icona Noel Teku",
                    imageUrl: "https://cdn.shopify.com/s/files/1/0016/2100/0279/files/ICONA_noel_teku700x700_500x500.png?v=1730301833",
                    isChristmas: true, category: "Beer",
                    price: 15.00,
                    description: "Bicchiere da degustazione edizione Noel."),
            
            Product(id: UUID(),
                    name: "Noel Orange e Cacao",
                    imageUrl: "https://cdn.shopify.com/s/files/1/0016/2100/0279/files/ICONANoelOrangeeCacao_500x500.png?v=1698679582",
                    isChristmas: true, category: "Beer",
                    price: 18.00,
                    description: "Birra aromatizzata arancia e cacao, edizione Natale."),
            
            Product(id: UUID(),
                    name: "Panettone senza canditi",
                    imageUrl: "https://cdn.shopify.com/s/files/1/0016/2100/0279/files/Noel2023_PanettoneSENZACANDITIICO_500x500.png?v=1698763329",
                    isChristmas: true, category: "Food",
                    price: 25.00,
                    description: "Panettone artigianale senza canditi, Natale 2025.")
        ]
    }
}
