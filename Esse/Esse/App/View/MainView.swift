//
//  MainView.swift
//  Esse
//
//  Created by Luke Kremer on 1/2/21.
//

import SwiftUI

struct MainView: View {
    
    @State private var isShowingJournal: Bool = false
    @State private var animatingButton: Bool = false
    
    var body: some View {
        TabView {
            EntriesView()
                            .tabItem {
                                Image(systemName: "book.closed")
                            }

                        ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
            
            
        } //: TAB
        .overlay(
            ZStack {
                Group {
                    Circle()
                        .fill(Color("ColorDarkMidnightBlue"))
                        .opacity(self.animatingButton ? 0.4 : 0)
                        .scaleEffect(self.animatingButton ? 1 : 0)
                        .frame(width: 80, height: 80, alignment: .center)
                    Circle()
                        .fill(Color("ColorDarkMidnightBlue"))
                        .opacity(self.animatingButton ? 0.3 : 0)
                        .scaleEffect(self.animatingButton ? 1 : 0)
                        .frame(width: 100, height: 100, alignment: .center)
                }
                .animation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: true))
                
                Button(action: {
                    isShowingJournal = true
                }) {
                    Image("NewButton")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60, alignment: .center)
                }
                .sheet(isPresented: $isShowingJournal) {
                    JournalView()
                }
                    .onAppear(perform: {
                        self.animatingButton.toggle()
                    })
                    
                .padding()
            }
            , alignment: .bottom
            )
        
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
