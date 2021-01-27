//
//  ProfileView.swift
//  Esse
//
//  Created by Luke Kremer on 1/2/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
        ZStack {
            Image("GoldBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
            Text("Profile")
                } //: VSTACK
            .navigationBarTitle(Text("Profile"), displayMode: .inline)
            .padding()
            
            } //: ZSTACK
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
