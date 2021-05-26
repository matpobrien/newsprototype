//
//  Category.swift
//  News Prototype
//
//  Created by Mat on 26.05.21.
//

import SwiftUI

struct Category: View {
    let categoryName: String
    
    var body: some View {
        VStack {
            Text("")
        }
        .navigationBarTitle(categoryName)
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
