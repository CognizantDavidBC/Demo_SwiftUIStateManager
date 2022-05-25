//
//  ContentView.swift
//  NavigationSwiftUI
//
//  Created by m_944879 on 25/5/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        TabView(selection: $stateManager.tabSelected) {
            FirstTabView()
                .tabItem { Label("First", systemImage: "1.square") }
                .tag(1)
            
            SecondTabView()
                .tabItem { Label("Second", systemImage: "2.square") }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StateManager())
    }
}
