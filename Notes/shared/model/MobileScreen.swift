//
//  MobileScreen.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

enum MobileScreenUnion : Codable {
    case Account(MobileAccountScreenUnion)
    case Upgrade(MobileUpgradeScreenUnion)
}

enum MobileAccountScreenUnion : Codable {
    case Standard (StandardMobileAccountScreen)
}

struct StandardMobileAccountScreen: Codable {
    let id: String
    let title: String
    let button: PrimaryMobileButtonCampaignContent
    let multilineButton: MultilineMobileButtonCampaignContent
    let modules: MobileModuleUnion
}


enum MobileUpgradeScreenUnion : Codable {
    case MultiPlan (MobileMultiPlanUpgradeScreen)
}

struct MobileMultiPlanUpgradeScreen : Codable {
    let id: String
    let heading: String
    let subheading:String
    let items: [MobileMultiPlanUpgradeScreenCard]
}


struct MobileMultiPlanUpgradeScreenCard: Codable {
    let id: String
    let heading: String
    let subheading: String
    let primaryLabel?: String
    let trailingLabel?: String
    let items: [String]
    let button: PrimaryMobileButtonCampaignContent
    let image: Image
}
