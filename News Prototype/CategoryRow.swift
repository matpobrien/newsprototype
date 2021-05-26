//
//  CategoryRow.swift
//  News Prototype
//
//  Created by Mat on 26.05.21.
//

import SwiftUI

struct CategoryRow: View {
    let geometry: GeometryProxy
    
    var body: some View {
        HStack {
            CategoryCard(geometry: geometry)
            CategoryCard(geometry: geometry)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
