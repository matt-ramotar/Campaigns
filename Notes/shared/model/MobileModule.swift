//
//  MobileModule.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

enum MobileModuleUnion : Codable {
    case List (MobileListModuleUnion)
}

enum MobileListModuleUnion : Codable {
    case Standard (StandardMobileListModule)
}

struct StandardMobileListModule : Codable {
    let id: String
    let heading: String
    let subheading: String
    let button: PrimaryMobileButtonCampaignContent
    let image?: Image
    let items: [StandardMobileListModuleItem]
}

struct StandardMobileListModuleItem : Codable {
    let title: String
    let subtitle: String
    let action: MobileActionUnion
    let leadingIcon?: Icon
    let trailingIcon?: Icon
    let backgroundColor?: Color
    let textColor?: Color
    let borderColor?: Color
}
