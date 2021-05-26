//
//  ContentView.swift
//  News Prototype
//
//  Created by Mat on 26.05.21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
    var body: some View {
        TabView(selection: $selection) {
            Categories()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "globe")
                        Text("Categories")
                    }
                }
                .tag(0)
            Profile()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Profile")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
