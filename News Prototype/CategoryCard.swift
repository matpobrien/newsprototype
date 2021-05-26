//
//  CategoryCard.swift
//  News Prototype
//
//  Created by Mat on 26.05.21.
//

import SwiftUI

struct CategoryCard: View {
    let geometry: GeometryProxy

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Image("business")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: geometry.size.width * 0.45, height: geometry.size.width * 0.55)
            Text("Business")
                .font(.headline)
                .foregroundColor(.white)
                .padding(12)
        }
        .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
    }
}

struct CategoryCard_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
