//
//  FirstDetailView.swift
//  NavigationSwiftUI
//
//  Created by m_944879 on 25/5/22.
//

import SwiftUI

struct FirstDetailView: View {
    @EnvironmentObject var stateManager: StateManager
    let items: [String] = ["😬", "😗", "😁", "😜"]
    
    var body: some View {
        List(items, id: \.self) { item in
            NavigationLink(destination: EmojiView(item: item),
                           tag: item,
                           selection: $stateManager.selectedItem,
                           label: { Text(item) })
        }
        .navigationTitle(Text("First detail view"))
    }
}

struct FirstDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FirstDetailView()
                .environmentObject(StateManager())
        }
    }
}
