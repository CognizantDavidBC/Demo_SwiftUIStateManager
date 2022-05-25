//
//  FirstTabView.swift
//  NavigationSwiftUI
//
//  Created by m_944879 on 25/5/22.
//

import SwiftUI

struct FirstTabView: View {
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        NavigationView {
            VStack(spacing: 12) {
                Text("First tab view")
                NavigationLink(destination: FirstDetailView(),
                               isActive: $stateManager.firstDetailShown,
                               label: { Text("Show detail view") })
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
            .environmentObject(StateManager())
    }
}
