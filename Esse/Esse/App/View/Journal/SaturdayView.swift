//
//  SaturdayView.swift
//  Esse
//
//  Created by Luke Kremer on 1/19/21.
//

import SwiftUI

struct SaturdayView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var saturday1: String = ""
    @State private var saturday2: String = ""
    @State private var saturday3: String = ""
    @State private var saturday4: String = ""
    @State private var saturday5: String = ""
    @State private var saturday6: String = ""
    @State private var saturday7: String = ""
    @State private var saturday8: String = ""
    @State private var saturday9: String = ""
    @State private var saturday10: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("GoldBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                Group {
                    // MARK: - 1
                Text("List an extra 10 things you are grateful for:")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                            
                        TextField("#1", text: $saturday1)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - 2
                            
                    TextField("#2", text: $saturday2)
                        .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(50)
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .accentColor(.black)
                        
                    // MARK: - 3
                            TextField("#3", text: $saturday3)
                        .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.black)
                                .accentColor(.black)
               
               // MARK: - 4
                       TextField("#4", text: $saturday4)
                   .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(50)
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .accentColor(.black)

               // MARK: - 5
                       TextField("#5", text: $saturday5)
                   .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(50)
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .accentColor(.black)
                }
                Group {
                // MARK: - 6
                        
                    TextField("#6", text: $saturday6)
                        .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(50)
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .accentColor(.black)
                
                // MARK: - 7
                        
                TextField("#7", text: $saturday7)
                    .padding()
                    .background(Color(UIColor.tertiarySystemFill))
                    .cornerRadius(50)
                    .font(.system(size: 25, weight: .light, design: .rounded))
                    .foregroundColor(.black)
                    .accentColor(.black)
                    
                // MARK: - 8
                        TextField("#8", text: $saturday8)
                    .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
           
           // MARK: - 9
                   TextField("#9", text: $saturday9)
               .padding()
                    .background(Color(UIColor.tertiarySystemFill))
                    .cornerRadius(50)
                    .font(.system(size: 25, weight: .light, design: .rounded))
                    .foregroundColor(.black)
                    .accentColor(.black)

           // MARK: - 10
                   TextField("#10", text: $saturday10)
               .padding()
                    .background(Color(UIColor.tertiarySystemFill))
                    .cornerRadius(50)
                    .font(.system(size: 25, weight: .light, design: .rounded))
                    .foregroundColor(.black)
                    .accentColor(.black)
                }
                    
                NavigationLink(destination: GratitudeView()
                                .navigationBarHidden(true), label: {
                                    Image("Next Button Dark Midnight Blue")
                                        .resizable()
                                        .frame(width: 60, height: 60, alignment: .center)
                                })
            } //: VSTACK
                } //: SCROLL
            .navigationBarTitle(Text("Saturday"), displayMode: .inline)
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

struct SaturdayView_Previews: PreviewProvider {
    static var previews: some View {
        SaturdayView()
    }
}
