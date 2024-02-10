//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Ivan Romero on 10/02/2024.
//

import SwiftUI

struct CreditsView: View {
    // MARK: - PROPERTIES
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    private var randomImage: String { "developer-no\(randomNumber)" }
    
    
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 3) {
            // PROFILE IMAGE
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            // HEADER
            HeaderView(title: "Credits")
            
            // CONTENT
            Text("Ivan Manuel Romero")
                .foregroundStyle(.primary)
                .fontWeight(.bold)
            
            Text("Developer")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .fontWeight(.light)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    CreditsView()
}
