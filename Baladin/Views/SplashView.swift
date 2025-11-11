//
//  SplashView.swift
//  Baladin
//
//  Created by Giuseppe Sica on 10/11/25.
//


import SwiftUI

struct SplashView: View {
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            Color.baladinDeepBrown.ignoresSafeArea()
            if isActive {
                HomeView()
            } else {
               splashAnimation()
            }
        }
    }
}

extension SplashView {
    @ViewBuilder
    private func splashAnimation() -> some View {
        VStack {
            Image("baladinLogo")
                .resizable()
                .frame(width: 150, height: 150)
            Text("Baladin")
                .font(.largeTitle)
                .bold()
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}
