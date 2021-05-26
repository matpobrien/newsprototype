//
//  CategoryRow.swift
//  News Prototype
//
//  Created by Mat on 26.05.21.
//

import SwiftUI

struct CategoryRow: View {
    let geometry: GeometryProxy
    let categoryNameLeft: String
    let categoryNameRight: String
    
    var body: some View {
        HStack {
            NavigationLink(destination: Category(categoryName: categoryNameLeft)) {
                CategoryCard(geometry: geometry, categoryName: categoryNameLeft)

            }
            NavigationLink(destination: Category(categoryName: categoryNameRight)) {
                CategoryCard(geometry: geometry, categoryName: categoryNameRight)

            }
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
