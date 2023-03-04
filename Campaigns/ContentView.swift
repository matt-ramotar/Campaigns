//
//  ContentView.swift
//  Campaigns
//
//  Created by mramotar on 3/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("Logo").resizable().aspectRatio( contentMode: .fit).frame(width: 300)
        }.frame(maxWidth: .infinity, maxHeight: .infinity).background(Color("Standard.Background"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
