//
//  ContentView.swift
//  Notes Watch App
//
//  Created by Ivan Romero on 10/02/2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // MARK: - FUNCTIONS
    func save() {
        dump(notes)
    }
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .center, spacing: 6) {
                    TextField("Add new note", text: $text)
                    
                    Button {
                        // 1. Only run the buttons action when the text field is not empty
                        guard text.isEmpty == false else { return }
                        
                        // 2. Create a new note item and initialize it with the text value
                        let note = Note(id: UUID(), text: text)
                        
                        // 3. Add the new note item to the notes array (append)
                        notes.append(note)
                        
                        // 4. Make the text field empty
                        text = ""
                        
                        // 5. Save the notes (Function)
                        save()
                        
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 42, weight: .semibold))
                    }
                    .fixedSize()
                    .buttonStyle(.plain)
                    .foregroundStyle(.accent)
                }
                
                Spacer()
                
                Text("\(notes.count)")
            }
            .navigationTitle("Notes")
        }
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
