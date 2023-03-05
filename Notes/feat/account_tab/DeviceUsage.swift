//
//  DeviceUsage.swift
//  Notes
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI

struct DeviceUsage: View {
    
    var body: some View {
        
        VStack {
            HStack {
                LinkedDeviceCell()
                LinkedDeviceCell()
                LinkedDeviceCell()
            }
            
            Text("Devices")
            
            HStack {
                Text("2")
                Text("/")
                Text("3")
            }
            
            DigButton()
        }.frame(maxHeight: .infinity).padding(16).overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color("Secondary"), lineWidth: 1.5)
        )
    }
}
        


struct LinkedDeviceCell : View {
    var body : some View {
        VStack {
            Image("Mobile.Line").renderingMode(.template).foregroundColor(Color("Secondary")).colorInvert()
        }
    }
}
