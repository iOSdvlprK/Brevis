//
//  MainHotkeysView.swift
//  Brevis
//
//  Created by joe on 10/16/24.
//

import SwiftUI

struct MainHotkeysView: View {
    @State private var searchQuery = ""
    var vm = HotkeyCategoryViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                // sections for each category
                List(vm.hotkeyCategoryModels) { hotkeyCategory in
                    // TODO: implement section view
                    Text(hotkeyCategory.name)
                }
            }
            .navigationTitle("Xcode Hotkeys")
            .searchable(text: $searchQuery, prompt: "Search...")
        }
    }
}

#Preview {
    MainHotkeysView()
}
