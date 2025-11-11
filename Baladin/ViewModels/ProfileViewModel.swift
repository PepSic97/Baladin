//
//  ProfileViewModel.swift
//  Baladin
//
//  Created by Giuseppe Sica on 11/11/25.
//


import SwiftUI
import Combine
import Foundation

class ProfileViewModel: ObservableObject {
    @Published var username = ""
    @Published var password = ""
}
