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
    
    var filteredHotkeyModels: [HotkeyModel] {
        if searchQuery.count <= 1 {
            return hotkeyModels
        } else {
            return hotkeyModels
                .filter {
                    $0
                        .text
                        .lowercased()
                        .contains(searchQuery.lowercased())
                }
        }
    }
    
    var body: some View {
        if !filteredHotkeyModels.isEmpty {
            Section {
                ForEach(filteredHotkeyModels) { hotkeyModel in
                    HotkeyRow(hotkeyModel: hotkeyModel, searchQuery: searchQuery)
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
