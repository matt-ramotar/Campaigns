//
//  ComponentBox.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

enum ComponentBoxType: Codable {
    case TopBanner("TopBanner")
    case BottomBanner("BottomBanner")
    case PopupModal("PopupModal")
    case Screen("Screen")
}

struct ComponentBox : Codable {
    let id: String
    let content: ComponentBoxUnion
    let type: ComponentBoxType
}


enum ComponentBoxUnion : Codable {
    case Box (BoxUnion)
    case Text (Text)
}

enum BoxUnion : Codable {
    case Column (ComponentBoxColumn)
    case Row (ComponentBoxRow)
    case Stack (ComponentBoxStack)
}

struct ComponentBoxColumn : Codable {
    let components: [ComponentBoxUnion]
}

struct ComponentBoxRow : Codable {
    let components: [ComponentBoxUnion]
}

struct ComponentBoxStack : Codable {
    let components: [ComponentBoxUnion]
}

struct Text {
    let content: String
}
