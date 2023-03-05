//
//  MobileButton.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

enum MobileButtonUnion : Codable {
    case Primary (PrimaryMobileButtonCampaignContent)
    case Multiline (MultilineMobileButtonCampaignContent)
}

struct PrimaryMobileButtonCampaignContent : Codable {
    let id: String
    let label: String
    let action: MobileActionUnion
    let backgroundColor?: Color
    let textColor?: Color
    let borderColor?: Color
}

struct MultilineMobileButtonCampaignContent : Codable {
    let id: String
    let heading: String
    let subheading: String
    let leadingIcon?: Icon
    let trailingIcon?: Icon
    let action: MobileActionUnion
    let backgroundColor?: Color
    let textColor?: Color
    let borderColor?: Color
}
