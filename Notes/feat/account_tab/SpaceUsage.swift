//
//  SpaceUsage.swift
//  Notes
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI

struct SpaceUsage: View {
    
    var body: some View {
        
        VStack {
            CircularProgressView(progress: 0.5).frame(width:48, height: 48)
            
            Text("Space")
            
            HStack {
                Text("500 MB")
                Text("/")
                Text("2 GB")
            }
            
            DigButton()
        }.frame(maxHeight: .infinity).padding(16).overlay(
            RoundedRectangle(cornerRadius: 4)
                .stroke(Color("Secondary"), lineWidth: 1.5)
        )
    }
}
        


struct CircularProgressView: View {
    let progress: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(
                    Color("Opacity").opacity(0.2),
                    lineWidth: 12
                )
            Circle()
                // 2
                .trim(from: 0, to: progress)
                .stroke(
                    Color("AccentColor"),
                    style: StrokeStyle(
                        lineWidth: 12,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
        }
    }
}
