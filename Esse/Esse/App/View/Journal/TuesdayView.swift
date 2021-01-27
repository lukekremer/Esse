//
//  TuesdayView.swift
//  Esse
//
//  Created by Luke Kremer on 1/19/21.
//

import SwiftUI

struct TuesdayView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var caused: String = ""
    @State private var given: String = ""
    @State private var improved: String = ""
    @State private var person: String = ""
    @State private var received: String = ""
    @State private var timeperiod: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("GoldBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                Group {
                    // MARK: - PERSON
                Text("Choose a person to focus on:")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("Their name is...", text: $person)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - TIME PERIOD
                Text("Choose a period of time to focus on:")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("The last...", text: $timeperiod)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                }
                Group {
                    // MARK: - RECEIVED
                Text("What have you received from this person in this period of time?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("I have received...", text: $received)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - GIVEN
                        Text("What have you given to this person in this period of time?")
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                              .multilineTextAlignment(.center)

                        TextField("I have given...", text: $given)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                }
                Group {
                    // MARK: - CAUSED
                    Text("What troubles and difficulties have you caused this person in this period of time?")
                      .font(.system(size: 25, weight: .light, design: .rounded))
                      .foregroundColor(.black)
                        .multilineTextAlignment(.center)

                        TextField("I have caused...", text: $caused)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - IMPROVE
                    Text("What can you do to improve this relationship?")
                      .font(.system(size: 25, weight: .light, design: .rounded))
                      .foregroundColor(.black)
                        .multilineTextAlignment(.center)

                        TextField("I can...", text: $improved)
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
            .navigationBarTitle(Text("Tuesday"), displayMode: .inline)
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

struct TuesdayView_Previews: PreviewProvider {
    static var previews: some View {
        TuesdayView()
    }
}
