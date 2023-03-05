//
//  UserProfile.swift
//  Notes
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI

struct UserProfile: View {
    @State private var count: Int = 0

    
    var body: some View {
        
        HStack {
            EditableAvatar(avatarUrl: Defaults.TAG_AVATAR_URL, action: {
                count  += 1
            })
            
            VStack {
                Text("Tag Ramotar")
                
                HStack {
                    Text("tag@componentbox.io")
                    
                    
                    if (count > 0) {
                        Text("\(count)").padding(.horizontal, 6).foregroundColor(Color("Red.Text")).background(Color("Red.Background")).clipShape(RoundedRectangle(cornerRadius: 4))
                    }
                    
                }

            }
            
            Image("Switcher.Line").renderingMode(.template).foregroundColor(Color("Secondary")).colorInvert()
        }.frame(maxWidth: .infinity)
    }
}
        
