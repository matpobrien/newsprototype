//
//  CategoriesView.swift
//  News Prototype
//
//  Created by Mat on 26.05.21.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    CategoryRow(geometry: geometry)
                    CategoryRow(geometry: geometry)
                    CategoryRow(geometry: geometry)
                    CategoryRow(geometry: geometry)
                }

            }
            .padding()
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
