//
//  FridayView.swift
//  Esse
//
//  Created by Luke Kremer on 1/19/21.
//

import SwiftUI

struct FridayView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var title: String = ""
    @State private var meaning: String = ""
    @State private var story: String = ""
    @State private var conflict: String = ""
    @State private var resolve: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("GoldBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                Group {
                    // MARK: - TITLE
                Text("Give the week a title:")
                    .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("The title is...", text: $title)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - MEANING
                Text("What is the meaning of the title?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("It means...", text: $meaning)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - STORY
                Text("Summarize the week as a story in third person point-of-view:")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("Once upon a time...", text: $story)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                }
                Group {
                    // MARK: - CONFLICT
                Text("What was the main conflict in the story?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("It was...", text: $conflict)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - RESOLVE
                Text("How did or could you resolve this conflict?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("I did/could...", text: $resolve)
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
            .navigationBarTitle(Text("Friday"), displayMode: .inline)
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

struct FridayView_Previews: PreviewProvider {
    static var previews: some View {
        FridayView()
    }
}
