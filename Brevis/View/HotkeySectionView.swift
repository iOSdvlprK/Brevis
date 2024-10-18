//
//  HotkeySectionView.swift
//  Brevis
//
//  Created by joe on 10/17/24.
//

import SwiftUI

struct HotkeySectionView: View {
    let hotkeyCategoryName: String
    let hotkeyModels: [HotkeyModel]
    let searchQuery: String
    
    // TODO: use a theme
    let sectionHeaderFont: Font = .body
    let fontWeight: Font.Weight = .semibold
    let sectionHeaderColor: Color = .red
    
    // TODO: filter according to 'searchQuery'
    var filteredHotkeyModels: [HotkeyModel] {
        hotkeyModels
    }
    
    var body: some View {
        if !filteredHotkeyModels.isEmpty {
            Section {
                ForEach(filteredHotkeyModels) { hotkeyModel in
                    // TODO: HotkeyRow
                    Text("\(hotkeyModel.character) \(hotkeyModel.text)")
                }
            } header: {
                Text(hotkeyCategoryName)
                    .font(sectionHeaderFont)
                    .fontWeight(fontWeight)
                    .foregroundStyle(sectionHeaderColor)
            }
        }
    }
}

#Preview {
    Form {
        HotkeySectionView(hotkeyCategoryName: "Navigation", hotkeyModels: [
            .init(modifiers: [.command], character: "1", text: "Project"),
            .init(modifiers: [.command], character: "2", text: "Source Control")
        ], searchQuery: "")
    }
}
