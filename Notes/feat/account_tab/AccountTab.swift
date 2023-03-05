//
//  AccountTab.swift
//  Notes
//
//  Created by mramotar on 3/3/23.
//


import Foundation
import SwiftUI

@available(iOS 14.0, *)
struct AccountTab: View {
    var body: some View {
        
        NavigationView {
            
            VStack(spacing: .zero) {
                DigBanner(
                    foregroundColor: "Green.Text", backgroundColor: "Green.Background"
                ).padding(.zero).frame(maxWidth: .infinity, maxHeight: 100)
                AccountTabContent()
            }.toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image("Settings.Line").resizable().renderingMode(.template).foregroundColor(Color("Secondary")).colorInvert()
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Personal").font(.title)
                }
            }.frame(maxWidth: .infinity).background(Color("Standard.Background"))
        }
        
        
    }
}


