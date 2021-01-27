//
//  MondayView.swift
//  Esse
//
//  Created by Luke Kremer on 1/19/21.
//

import SwiftUI

struct MondayView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var emotion1: String = ""
    @State private var emotion2: String = ""
    @State private var emotion3: String = ""
    @State private var helporhurt: String = ""
    @State private var thought1: String = ""
    @State private var mondaywhy: String = ""
    @State private var thought2: String = ""
    @State private var thought3: String = ""
    let answers = ["Helpful", "Hurtful"]
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Image("GoldBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                Group {
                    // MARK: - EMOTION 1
                Text("List the 3 emotions you experienced most frequently this week:")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                            
                        TextField("#1", text: $emotion1)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - EMOTION 2
                            
                    TextField("#2", text: $emotion2)
                        .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(50)
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .accentColor(.black)
                        
                    // MARK: - EMOTION 3

                            TextField("#3", text: $emotion3)
                        .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.black)
                                .accentColor(.black)
                }
                Group {
                    // MARK: - THOUGHT 1
                Text("List the 3 thoughts you experienced most frequently this week:")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                            
                        TextField("#1", text: $thought1)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - THOUGHT 2
                            
                    TextField("#2", text: $thought2)
                        .padding()
                        .background(Color(UIColor.tertiarySystemFill))
                        .cornerRadius(50)
                        .font(.system(size: 25, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .accentColor(.black)
                        
                    // MARK: - THOUGHT 3

                            TextField("#3", text: $thought3)
                        .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.black)
                                .accentColor(.black)
                }
                    
                Text("Were the main thoughts and emotions helpful or hurtful with regard to your overall wellness?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                                                    
                                Picker(selection: $helporhurt,
                            label: Text("Meditate")) {
                            ForEach(answers, id: \.self) {
                                Text($0)
                }
                            }
                                .background(Color(UIColor.tertiarySystemFill))
                                    .pickerStyle(SegmentedPickerStyle())
                        
                    
                    // MARK: - WHY
                Text("Why?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                            TextField("Because...", text: $mondaywhy)
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
            .navigationBarTitle(Text("Monday"), displayMode: .inline)
            .padding()
                .navigationBarItems(trailing:
                                        Button(action: {
                                            presentationMode.wrappedValue.dismiss()
                                        }) {
                                            Text("Cancel")
                                                .fontWeight(.thin)
                                        }
              )
            }
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MondayView_Previews: PreviewProvider {
    static var previews: some View {
        MondayView()
    }
}
