//
//  HotkeyCategoryModel.swift
//  Brevis
//
//  Created by joe on 10/15/24.
//

import Foundation

struct HotkeyCategoryModel: Identifiable {
    let id = UUID()
    
    let name: String
    let hotkeyModels: [HotkeyModel]
}
