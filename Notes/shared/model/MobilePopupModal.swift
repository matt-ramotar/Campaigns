//
//  MobilePopupModal.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

enum MobilePopupModalUnion : Codable {
    case Standard (StandardMobilePopupModalCampaignContent)
}

struct StandardMobilePopupModalCampaignContent {
    let id: String
    let heading: String
    let subheading: String
    let button: PrimaryMobileButtonCampaignContent
    let image?: Image
    let backgroundColor?: Color
    let textColor?: Color
    let borderColor?: Color
}
