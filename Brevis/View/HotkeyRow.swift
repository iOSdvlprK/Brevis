//
//  HotkeyRow.swift
//  Brevis
//
//  Created by joe on 10/18/24.
//

import SwiftUI

struct HotkeyRow: View {
    let hotkeyModel: HotkeyModel
    let searchQuery: String
    
    // TODO: use theme
    let font: Font = Theme.font
    let fontSecondary: Font = Theme.fontSecondary
    let fontWeight: Font.Weight = Theme.fontWeight
    let hotkeyWidth = Theme.hotkeyWidth
    
    var charFound: Bool {
        searchQuery.count == 1 && hotkeyModel.character.lowercased() == searchQuery.lowercased()
    }
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.horizontalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        let layout = Theme.layout(isIPad: isIPad)
        
        layout {
            HStack {
                if charFound {
                    Text("🔵")
                        .font(font)
                }
                
                Text(hotkeyModel.description)
                    .font(font)
                    .fontWeight(.semibold)
            }
            .frame(width: hotkeyWidth, alignment: .leading)
            
            Text(hotkeyModel.text.capitalized)
                .foregroundStyle(.secondary)
                .font(fontSecondary)
        }
        .foregroundStyle(charFound ? .blue : .black)
    }
}

#Preview {
    VStack {
        HotkeyRow(hotkeyModel:  .init(modifiers: [.command], character: "b", text: "build"), searchQuery: "b")
        HotkeyRow(hotkeyModel:  .init(modifiers: [.command], character: "b", text: "build"), searchQuery: "r")
    }
    .frame(minWidth: Theme.frameWidth, minHeight: Theme.frameHeight)
}
