//
//  Menu.swift
//  LittleLemon
//
//  Created by Andrew Park on 6/28/24.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        VStack {
            Text("App Title")
                // Add modifiers after setup
            Text("Restaurant Location")

            Text("Description")
            
            List {
                // Menu items will be displayed here
            }
        }
    }
}

#Preview {
    Menu()
}
