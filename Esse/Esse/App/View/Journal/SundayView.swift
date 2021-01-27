//
//  SundayView.swift
//  Esse
//
//
//  SundayView.swift
//  Esse
//
//  Created by Luke Kremer on 1/5/21.
//

import SwiftUI

struct SundayView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var sundayGoal: String = ""
    @State private var sundayWhy: String = ""
    @State private var sundayMantra: String = ""
    @State private var sundayPlan: String = ""
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Image("GoldBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
            
                ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                        // MARK: - MINDFULNESS GOAL
                      
                        // MARK: - GOAL
                    Text("What is your mindfulness goal for this week?")
                      .font(.system(size: 25, weight: .light, design: .rounded))
                      .foregroundColor(.black)
                        .multilineTextAlignment(.center)

                            TextField("My goal is...", text: $sundayGoal)
                                .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.black)
                                .accentColor(.black)
                    
                        // MARK: - WHY
                    Text("Why do you want to pursue this goal?")
                      .font(.system(size: 25, weight: .light, design: .rounded))
                      .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                                
                        TextField("I want to because...", text: $sundayWhy)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                            
                        // MARK: - PLAN
                    Text("How do you plan to achieve this goal?")
                      .font(.system(size: 25, weight: .light, design: .rounded))
                      .foregroundColor(.black)
                        .multilineTextAlignment(.center)

                                TextField("I plan to...", text: $sundayPlan)
                            .padding()
                                    .background(Color(UIColor.tertiarySystemFill))
                                    .cornerRadius(50)
                                    .font(.system(size: 25, weight: .light, design: .rounded))
                                    .foregroundColor(.black)
                                    .accentColor(.black)
                            
                        
                      
                        // MARK: - MANTRA
                    Text("Write your mantra for this week:")
                      .font(.system(size: 25, weight: .light, design: .rounded))
                      .foregroundColor(.black)
                        .multilineTextAlignment(.center)

                        TextField("My mantra is...", text: $sundayMantra)
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
                .navigationBarTitle(Text("Sunday"), displayMode: .inline)
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

struct SundayView_Previews: PreviewProvider {
    static var previews: some View {
        SundayView()
    }
}

