//
//  Avatar.swift
//  Notes
//
//  Created by mramotar on 3/4/23.
//

import Foundation
import SwiftUI


@available(iOS 14.0, *)
struct DigAvatar: View {
    let url: String
    let height: CGFloat = 120
    let width: CGFloat = 120
    
    var body: some View {
        AsyncImage(url: URL(string: url), content: { image in
            image.image?.resizable()
                  .aspectRatio(contentMode: .fit)
                  .clipShape(Circle())
                  .frame(width: width, height: height)
            
        })

    }
}



