//
//  HomeTab.swift
//  Notes
//
//  Created by mramotar on 3/3/23.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *)
struct HomeTab: View {
    var body: some View {
        NavigationView {
            HomeTabContent().navigationTitle("Home").toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("Notification.Line").resizable().renderingMode(.template).frame(width: 32.0, height: 32.0).foregroundColor(Color("Standard.Text"))
                }
            }.background(Color("Standard.Background"))
        }
    }
        


}


