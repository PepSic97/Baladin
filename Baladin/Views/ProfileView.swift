//
//  ProfileView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import SwiftUI

struct ProfileView: View {
    
    @StateObject private var viewModel = ProfileViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            titleText()
            userField()
            passwordField()
            buttonConfirm()
            Spacer()
        }
    }
}

extension ProfileView {
    @ViewBuilder
    private func titleText() -> some View {
        Text("Profilo Utente")
            .font(.title)
            .bold()
    }
    
    @ViewBuilder
    private func userField() -> some View {
        TextField("Username o Email", text: $viewModel.username)
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
    }
    
    @ViewBuilder
    private func passwordField() -> some View {
        SecureField("Password", text: $viewModel.password)
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal)
    }
    
    
    @ViewBuilder
    private func buttonConfirm() -> some View {
        Button("Conferma") {}
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.baladinGold)
            .foregroundColor(.baladinDeepBrown)
            .cornerRadius(10)
            .padding(.horizontal)
    }
}
