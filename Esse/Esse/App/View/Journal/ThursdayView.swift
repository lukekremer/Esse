//
//  ThursdayView.swift
//  Esse
//
//  Created by Luke Kremer on 1/19/21.
//

import SwiftUI

struct ThursdayView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var affirmations3: String = ""
    @State private var affirmations2: String = ""
    @State private var affirmations1: String = ""
    @State private var love1: String = ""
    @State private var love2: String = ""
    @State private var love3: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("GoldBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                
                    // MARK: - SELF LOVE 1
                    Text("List 3 things you love about yourself:")
                      .font(.system(size: 25, weight: .light, design: .rounded))
                      .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                            
                        TextField("I love...", text: $love1)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - SELF LOVE 2
                            
                    TextField("I love...", text: $love2)
                        .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(50)
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .accentColor(.black)
                        
                    // MARK: - SELF LOVE 3

                            TextField("I love...", text: $love3)
                        .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.black)
                                .accentColor(.black)
                    
                    // MARK: - AFFIRMATIONS 1
                Text("Write 3 positive affirmations:")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                            
                        TextField("I am...", text: $affirmations1)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - AFFIRMATIONS 2
                            
                    TextField("I am...", text: $affirmations2)
                        .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(50)
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .accentColor(.black)
                        
                    // MARK: - AFFIRMATIONS 3

                            TextField("I am...", text: $affirmations3)
                        .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.black)
                                .accentColor(.black)
                
                NavigationLink(destination: GratitudeView()
                                .navigationBarHidden(true), label: {
                                    Image("Next Button Dark Midnight Blue")
                                        .resizable()
                                        .frame(width: 60, height: 60, alignment: .center)
                                })
                
            } //: VSTACK
                } //: SCROLL
            .navigationBarTitle(Text("Thursday"), displayMode: .inline)
            .padding()
            .navigationBarItems(trailing:
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Text("Cancel")
                                            .fontWeight(.thin)
                                    }
          )
        } //: ZSTACK
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ThursdayView_Previews: PreviewProvider {
    static var previews: some View {
        ThursdayView()
    }
}
