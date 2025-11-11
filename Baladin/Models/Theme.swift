//
//  Theme.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//

import SwiftUI

extension Color {
    static let baladinGold = Color(hex: "#C9A86A")
    static let baladinDarkBrown = Color(hex: "#3B2F2F")
    static let baladinCream = Color(hex: "#F2E8D5")
    static let baladinDeepBrown = Color(hex: "#2A1F1B")
    static let baladinWine = Color(hex: "#8B3A3A")
    static let baladinBlack = Color(hex: "#111111")
}

extension Color {
    init(hex: String) {
        let hex = hex.replacingOccurrences(of: "#", with: "")
        let scanner = Scanner(string: hex)
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255
        let g = Double((rgb >> 8) & 0xFF) / 255
        let b = Double(rgb & 0xFF) / 255
        
        self.init(red: r, green: g, blue: b)
    }
}
