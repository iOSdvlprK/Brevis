//
//  Theme.swift
//  Brevis
//
//  Created by joe on 10/22/24.
//

import SwiftUI

#if os(iOS)
struct Theme {
    static let font: Font = .headline
    static let fontSecondary: Font = .body
    static let fontWeight: Font.Weight = .regular
    static let modifierFont: Font = .headline
    static let frameWidth: CGFloat? = nil // for mac
    static let frameHeight: CGFloat? = nil // for mac
    static let listStyle = DefaultListStyle()
    static let sectionHeaderFont: Font = .body
    static let hotkeyWidth: CGFloat? = nil // for mac
    static let subtitleColor: Color = .red
    
    static func layout(isIPad: Bool) -> AnyLayout {
        isIPad ? AnyLayout(VStackLayout(alignment: .leading)) : AnyLayout(HStackLayout())
    }
}
#else
struct Theme {
    static let font: Font = .title
    static let fontSecondary: Font = .title
    static let fontWeight: Font.Weight = .semibold
    static let modifierFont: Font = .title
    static let frameWidth: CGFloat? = 700 // for mac
    static let frameHeight: CGFloat? = 550 // for mac
    static let listStyle = SidebarListStyle()
    static let sectionHeaderFont: Font = .largeTitle
    static let hotkeyWidth: CGFloat? = 200 // for mac
    static let subtitleColor: Color = .red
    
    static func layout(isIPad: Bool) -> AnyLayout {
        AnyLayout(HStackLayout())
    }
}
#endif
