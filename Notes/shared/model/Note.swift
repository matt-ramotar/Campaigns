//
//  Note.swift
//  Notes
//
//  Created by mramotar on 3/5/23.
//

import Foundation

struct Note : Codable {
    let id: String
    let backgroundColor?: Color
    let textColor?: Color
    let borderColor?: Color
}
