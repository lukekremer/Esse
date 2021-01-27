//
//  EntriesView.swift
//  Esse
//
//  Created by Luke Kremer on 1/5/21.
//

import SwiftUI

struct EntriesView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
            Image("BlueBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                            ForEach(0 ..< 7) { item in
                                ListItemView()
                            } //: FOREACH
                            .padding()
                        } //: HSTACK
                    } //: SCROLL
                .navigationBarTitle(Text("Entries"), displayMode: .inline)
                .padding()
            }
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct EntriesView_Previews: PreviewProvider {
    static var previews: some View {
        EntriesView()
    }
}
