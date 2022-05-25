//
//  EmojiView.swift
//  NavigationSwiftUI
//
//  Created by m_944879 on 25/5/22.
//

import SwiftUI

struct EmojiView: View {
    let item: String
    
    @EnvironmentObject var stateManager: StateManager
    
    var body: some View {
        VStack(spacing: 32) {
            Text(item)
                .ignoresSafeArea()
                .font(.largeTitle)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.gray)
            
            Button("Go to root") {
                stateManager.goToFirstRootView()
            }
            
            Button("Go one back") {
                stateManager.selectedItem = nil
            }
        }
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(item: "🙂")
                .environmentObject(StateManager())
    }
}
