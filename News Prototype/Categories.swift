//
//  CategoriesView.swift
//  News Prototype
//
//  Created by Mat on 26.05.21.
//

import SwiftUI

struct Categories: View {
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    VStack {
                        CategoryRow(geometry: geometry, categoryNameLeft: "Business", categoryNameRight: "Science")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Sports", categoryNameRight: "Opinion")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Finance", categoryNameRight: "Politics")
                        CategoryRow(geometry: geometry, categoryNameLeft: "Health", categoryNameRight: "Arts")
                    }

                }
                .padding()
            }
            // These have to go inside the navigation, not on the closing tag
            .navigationBarTitle("Categories")
            .navigationBarHidden(true)
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
