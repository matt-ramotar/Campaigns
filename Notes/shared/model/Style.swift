//
//  Style.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

enum IconType: Codable {
    case App("App")
    case CloseLine("CloseLine")
    case CloseFill("CloseFill")
    case FileRequestLine("FileRequestLine")
    case BackupLine("BackupLine")
    case RevertFileLine("RevertFileLine")
    case CloudOfflineLine("CloudOfflineLine")
    case RightChevronLine("RightChevronLine")
}

enum Color: Codable {
    case Primary ("Primary")
    case Secondary ("Secondary")
    case Accent ("Accent")
    case Standard ("Standard")
    case Faint ("Faint")
    case Opacity("Opacity")
    case Amber ("Amber")
    case Blue("Blue")
    case Cyan("Cyan")
    case Fuchsia("Fuchsia")
    case Gray("Gray")
    case Green("Green")
    case Emerald("Emerald")
    case Indigo("Indigo")
    case Lime("Lime")
    case Orange("Orange")
    case Pink("Pink")
    case Purple("Purple")
    case Red("Red")
    case Rose("Rose")
    case Sky("Sky")
    case Teal("Teal")
    case Violet("Violet")
    case Yellow("Yellow")
}

struct Image : Codable {
    let lightUrl: String
    let darkUrl: String
    let backgroundColor?: Color
}

struct Icon : Codable {
    let type: IconType
    let backgroundColor?: Color
    let textColor?: Color
    let borderColor?: Color
}
