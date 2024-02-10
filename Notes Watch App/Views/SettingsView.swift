//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Ivan Romero on 10/02/2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    // MARK: - FUNCTIONS
    func determinatesValue() -> Binding<Float>{
        if lineCount != 1{
            DispatchQueue.main.async {
                value = Float(lineCount)
            }
        }
        
        return Binding(get: {
            self.value
        }, set: { newValue in
            self.value = newValue
            
            self.update()
        })
    }
    
    func update() {
        lineCount = Int(value)
    }
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            
            // ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER
            Slider(value: determinatesValue(), in: 1...4, step: 1)
            .tint(.accent)

        }
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsView()
}
