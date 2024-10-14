//
//  HotkeyModel.swift
//  Brevis
//
//  Created by joe on 10/14/24.
//

import Foundation

struct HotkeyModel: Identifiable {
    let id = UUID()
    
    let modifiers: [Modifier]
    let character: String
    let text: String
    
    var description: String {
        "\(modifiers) \(character.capitalized)"
    }
}
