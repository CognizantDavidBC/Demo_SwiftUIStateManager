//
//  SecondTabView.swift
//  NavigationSwiftUI
//
//  Created by m_944879 on 25/5/22.
//

import SwiftUI

struct SecondTabView: View {
    @EnvironmentObject var stateManager: StateManager
    @State private var isPresentingOverlay = false
    
    var body: some View {
        VStack(spacing: 24) {
            Text("Second tab view")
            Button("Show overlay") { isPresentingOverlay.toggle() }
            Button("Go to first tab detail") {
                stateManager.tabSelected = 1
                stateManager.firstDetailShown = true
                
            }
        }
        .fullScreenCover(isPresented: $isPresentingOverlay) {
            VStack(spacing: 12) {
                Text("This is taking all the space")
                Button("Done") { isPresentingOverlay = false }
            }
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow)
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
            .environmentObject(StateManager())
    }
}
