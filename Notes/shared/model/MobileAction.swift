//
//  MobileAction.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

enum MobileActionType: Codable {
    case IapNavigation("IapNavigation")
    case FeatureDiscoveryNavigation("FeatureDiscoveryNavigation")
    case FileRequestsNavigation("FileRequestsNavigation")
    case ManageOfflineFilesNavigation("ManageOfflineFilesNavigation")
    case RecoverDeletedFilesNavigation("RecoverDeletedFilesNavigation")
    case BackupNavigation("BackupNavigation")
}


struct IapMobileNavigationAction : Codable {
    let campaign?: Campaign
}

struct FeatureDiscoveryMobileNavigationAction : Codable {
    let campaign?: Campaign
}


enum MobileActionUnion : Codable {
    case MobileNavigationAction (MobileNavigationActionUnion)
}
enum MobileNavigationActionUnion: Codable {
    case Iap (IapMobileNavigationAction)
    case FeatureDiscovery (FeatureDiscoveryMobileNavigationAction)
}
