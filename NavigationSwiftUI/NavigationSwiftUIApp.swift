//
//  NavigationSwiftUIApp.swift
//  NavigationSwiftUI
//
//  Created by m_944879 on 25/5/22.
//

import SwiftUI

@main
struct NavigationSwiftUIApp: App {
    @StateObject var stateManager = StateManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(stateManager)
        }
    }
}
