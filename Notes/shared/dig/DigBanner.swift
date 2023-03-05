//
//  DigBanner.swift
//  Notes
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI

struct DigBanner : View {
    let foregroundColor: String
    let backgroundColor: String
    var body: some View {
        
        HStack {
            
            Image("ComponentBox").resizable().renderingMode(.template).foregroundColor(Color(foregroundColor)).frame(width:32, height: 32)
            
            Spacer()
            
            VStack {
                Text("Upgrade").foregroundColor(Color(foregroundColor))
                Text("Upgrade").foregroundColor(Color(foregroundColor))
            }
            
            Spacer()
            
            Image("Close.Line").resizable().renderingMode(.template).foregroundColor(Color(foregroundColor)).frame(width:32, height: 32)
        }.padding(16).frame(maxWidth: .infinity).background(Color(backgroundColor))
    }
}
