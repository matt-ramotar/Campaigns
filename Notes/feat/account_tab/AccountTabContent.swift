//
//  AccountTabContent.swift
//  Notes
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI

struct AccountTabContent: View {
    var body: some View {

        
        ScrollView(.vertical) {
            UserProfile().padding(.bottom, 4)
            
            MultilineButton().padding(.bottom, 4)
            
            HStack {
                SpaceUsage()
                Spacer()
                DeviceUsage()
            }.frame(height: 200).padding(.bottom, 4)

        }.padding(.horizontal, 16).frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("Standard.Background"))
         
    }
}

