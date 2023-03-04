//
//  EditableAvatar.swift
//  Campaigns
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI

struct EditableAvatar : View {
    let avatarUrl: String
    let action: () -> Void
    
    
    var body: some View {
        ZStack {
            DigAvatar(url: avatarUrl)
            Image("Edit.Line").resizable().renderingMode(.template).foregroundColor(Color("Secondary")).colorInvert().padding(4).background(Color("Standard.Background")).clipShape(Circle()).shadow(radius: 4).offset(x:28, y: 28).frame(width:28, height: 28).onTapGesture {
                action()
            }
        }
    }
}
