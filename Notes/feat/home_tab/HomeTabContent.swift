//
//  HomeTabContent.swift
//  Notes
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI


struct HomeTabContent: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("ComponentBox").resizable().aspectRatio( contentMode: .fit).frame(width: 200)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("Standard.Background"))
    }
}
