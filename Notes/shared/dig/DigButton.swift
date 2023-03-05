//
//  Button.swift
//  Notes
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI

struct DigButton: View {
    
    var body: some View {
        Button(action: {}, label: {
            Text("Upgrade")
        }).padding(8).foregroundColor(Color("Standard.Background")).font(.body.bold()).frame(maxWidth: .infinity).background(Color("AccentColor"))
    }
}
