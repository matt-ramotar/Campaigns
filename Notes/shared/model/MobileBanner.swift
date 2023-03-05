//
//  MobileBanner.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

enum MobileBannerUnion : Codable {
    case StandardMobileBanner (StandardMobileBannerCampaignContent)
}

struct StandardMobileBannerCampaignContent: Codable {
    let id: String
    let heading: String
    let leadingIcon?: Icon
    let trailingIcon?: Icon
    let action: MobileActionUnion
    let backgroundColor?: Color
    let textColor?: Color
    let borderColor?: Color
}
