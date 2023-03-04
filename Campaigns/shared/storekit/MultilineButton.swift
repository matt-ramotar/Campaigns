//
//  MultilineButton.swift
//  Campaigns
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI

struct MultilineButton: View {
    
    var body: some View {
        

        HStack {
            Image("ComponentBox").resizable().scaledToFit().frame(width:48, height: 48)
            
            
            VStack {
                Text("Your plan")
                Text("Dropbox Basic")
                Text("View details and manage your plan")
            }
            
            Image("ChevronRight.Line").renderingMode(.template).foregroundColor(Color("Secondary")).colorInvert()
        }.frame(maxWidth: .infinity).padding(12)
        
        .overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color("Secondary"), lineWidth: 1.5)
        )
    }
}

