//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Ivan Romero on 10/02/2024.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    var title: String = ""
    
    // MARK: - FUNCTIONS
    // MARK: - BODY
    var body: some View {
        VStack {
            // TITLE
            if !title.isEmpty {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.accent)
            }
            
            // SEPARATOR
            HStack {
                Capsule()
                    .frame(height: 1)
                
                Image(systemName: "note.text")
                
                Capsule()
                    .frame(height: 1)
            }
            .foregroundStyle(.accent)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    HeaderView()
}

#Preview {
    HeaderView(title: "Credits")
}
