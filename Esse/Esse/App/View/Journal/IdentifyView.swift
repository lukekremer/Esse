//
//  IdentifyView.swift
//  Esse
//
//  Created by Luke Kremer on 1/21/21.
//

import SwiftUI

struct IdentifyView: View {
        //  MARK: - PROPERTIES
          
    @Environment(\.presentationMode) var presentationMode
    
          @State private var surroundings: String = ""
          @State private var see: String = ""
          @State private var hear: String = ""
          @State private var touch: String = ""
          @State private var smell: String = ""
          @State private var feel: String = ""
    @State private var isLinkActive: Bool = false
    @State private var errorShowing: Bool = false
    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""
    
    var body: some View {
          // MARK: - BODY
              NavigationView {
                  
                ZStack {
                    Image("GoldBackground")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                    
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 20) {
                            Group {
                                      // MARK: - WHERE
                                          Text("Where are you?")
                                            .font(.system(size: 25, weight: .light, design: .rounded))
                                            .foregroundColor(.black)

                                          TextField("I am...", text: $surroundings)
                                              .padding()
                                            .background(Color(UIColor.tertiarySystemFill))
                                            .cornerRadius(50)
                                            .font(.system(size: 25, weight: .light, design: .rounded))
                                            .foregroundColor(.black)
                                            .accentColor(.black)
                                      
                                      // MARK: - SEE
                                          Text("What do you see?")
                                            .font(.system(size: 25, weight: .light, design: .rounded))
                                            .foregroundColor(.black)
                                              
                                      TextField("I see...", text: $see)
                                          .padding()
                                        .background(Color(UIColor.tertiarySystemFill))
                                        .cornerRadius(50)
                                        .font(.system(size: 25, weight: .light, design: .rounded))
                                        .foregroundColor(.black)
                                        .accentColor(.black)
                                          
                                      // MARK: - HEAR
                                          Text("What do you hear?")
                                            .font(.system(size: 25, weight: .light, design: .rounded))
                                            .foregroundColor(.black)

                                              TextField("I hear...", text: $hear)
                                          .padding()
                                                .background(Color(UIColor.tertiarySystemFill))
                                                .cornerRadius(50)
                                                .font(.system(size: 25, weight: .light, design: .rounded))
                                                .foregroundColor(.black)
                                                .accentColor(.black)
                            }
                            Group {
                                      // MARK: - TOUCH
                                          Text("What are you touching?")
                                            .font(.system(size: 25, weight: .light, design: .rounded))
                                            .foregroundColor(.black)

                                      TextField("I am touching...", text: $touch)
                                          .padding()
                                        .background(Color(UIColor.tertiarySystemFill))
                                        .cornerRadius(50)
                                        .font(.system(size: 25, weight: .light, design: .rounded))
                                        .foregroundColor(.black)
                                        .accentColor(.black)
                                          
                                      // MARK: - SMELL
                                      Text("What do you smell?")
                                        .font(.system(size: 25, weight: .light, design: .rounded))
                                        .foregroundColor(.black)

                                      TextField("I smell...", text: $smell)
                                          .padding()
                                        .background(Color(UIColor.tertiarySystemFill))
                                        .cornerRadius(50)
                                        .font(.system(size: 25, weight: .light, design: .rounded))
                                        .foregroundColor(.black)
                                        .accentColor(.black)
                                          
                                      // MARK: - FEEL
                                          Text("How do you feel?")
                                            .font(.system(size: 25, weight: .light, design: .rounded))
                                            .foregroundColor(.black)
                            
                                      TextField("I feel...", text: $feel)
                                          .padding()
                                        .background(Color(UIColor.tertiarySystemFill))
                                        .cornerRadius(50)
                                        .font(.system(size: 25, weight: .light, design: .rounded))
                                        .foregroundColor(.black)
                                        .accentColor(.black)
                            }
                            
                            NavigationLink(
                                destination: ReflectView() .navigationBarHidden(true),
                                label: {
                                    Image("Next Button Dark Midnight Blue")
                                        .resizable()
                                        .frame(width: 60, height: 60, alignment: .center)
                                })
                            
                              } //: VSTACK
                          .navigationBarTitle(Text("Identify the Moment"), displayMode: .inline)
                            .padding()
                          .navigationBarItems(trailing:
                                                Button(action: {
                                                    presentationMode.wrappedValue.dismiss()
                                                }) {
                                                    Text("Cancel")
                                                        .fontWeight(.thin)
                                                }
                      )
                        .alert(isPresented: $errorShowing) {
                            Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("Okay")))
                        }
                    }
                }
              } //: NAVIGATION
              .navigationViewStyle(StackNavigationViewStyle())
              
              }
          }
struct IdentifyView_Previews: PreviewProvider {
    static var previews: some View {
        IdentifyView()
            
            
    }
}
