//
//  Note.swift
//  Notes Watch App
//
//  Created by Ivan Romero on 10/02/2024.
//

import Foundation

struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
