//
//  Profile.swift
//  News Prototype
//
//  Created by Mat on 26.05.21.
//

import SwiftUI

struct Profile: View {
    let profileLinkNames: [String] = ["Saved Articles", "Followers", "Following"]
    var body: some View {
        NavigationView {
            VStack {
                ForEach(profileLinkNames, id: \.self) { profileLinkName in
                    ProfileLink(profileLinkName: profileLinkName)
                }
                Spacer()
            }
            .navigationBarItems(leading: Text("Premium Member")
                                    .font(.body)
                                    .foregroundColor(Color(.systemGray)),
                                trailing:
                                Image("avatar")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
            )
            .navigationBarTitle("Mat O'Brien")
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProfileLink: View {
    let profileLinkName: String
    var body: some View {
        NavigationLink(destination: Text("")) {
            VStack(spacing: 0) {
                HStack {
                    Text(profileLinkName)
                        .font(.body)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(Color(.systemGray3))
                        .font(.system(size: 20))
                }
                .contentShape(Rectangle())
                .padding(EdgeInsets(top: 17, leading: 21, bottom: 17, trailing: 21))
                Divider()
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
