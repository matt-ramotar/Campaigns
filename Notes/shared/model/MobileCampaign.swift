//
//  Campaign.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

struct MobileCampaign: Codable {
    let id: string
    let content: MobileCampaignContentUnion
    let ttl?: UInt64
}

enum MobileCampaignContentUnion : Codable {
    case MobileBanner (MobileBannerUnion)
    case MobileButton (MobileButtonUnion)
    case MobilePopupModal (MobilePopupModalUnion)
    case MobileModule (MobileModuleUnion)
    case MobileScreen (MobileScreenUnion)
    case ComponentBox (ComponentBox)
}
