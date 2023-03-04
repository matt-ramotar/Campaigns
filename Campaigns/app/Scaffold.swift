//
//  Scaffold.swift
//  Campaigns
//
//  Created by mramotar on 3/3/23.
//

import Foundation
import SwiftUI

@available(iOS 14.0, *)
struct Scaffold: View {

    @State private var selectedTab = 4
    @Environment(\.colorScheme) var colorScheme

    var handler: Binding<Int> {
        Binding(
                get: { selectedTab },
                set: {
                    if ($0 != selectedTab) {
                        selectedTab = $0
                    }
                }
        )
    }

    init() {
        UITabBar.appearance().barTintColor = .systemBackground
        UITabBar.appearance().unselectedItemTintColor = UIColor(named: "Standard.Text")
        UITabBar.appearance().tintColor = UIColor(named: "Standard.Text")
    }


    var body: some View {
        TabView(selection: handler) {
            HomeTab().tabItem {
                        if (selectedTab == 0) {
                            Image("Home.Fill").renderingMode(.template)
                        } else {
                            Image("Home.Line").renderingMode(.template)
                        }
                    }
                    .tag(0)

            AccountTab().tabItem {
                        if (selectedTab == 4) {
                            Image("Person.Fill").renderingMode(.template)
                        } else {
                            Image("Person.Line").renderingMode(.template)
                        }
                    }
                    .tag(4)
        }
                .accentColor(colorScheme == .dark ? Color.white : Color.black)
    }
}
