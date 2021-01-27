//
//  WednesdayView.swift
//  Esse
//
//  Created by Luke Kremer on 1/19/21.
//

import SwiftUI

struct WednesdayView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var change: String = ""
    @State private var effort: String = ""
    @State private var ontrack: String = ""
    @State private var pursuit: String = ""
 let answers = ["Yes", "No"]
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("GoldBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                
                Text("Are you on track to complete your goal?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                                                    
                                Picker(selection: $ontrack,
                            label: Text("On track")) {
                            ForEach(answers, id: \.self) {
                                Text($0)
                }
                            }
                                .background(Color(UIColor.tertiarySystemFill))
                                    .pickerStyle(SegmentedPickerStyle())
                        
                    
                    
                    // MARK: - EFFORT
                Text("How do you feel regarding your effort towards your goal?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("I feel...", text: $effort)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                    // MARK: - CHANGE
                Text("What can you change in order to ensure completion of your goal?")
                  .font(.system(size: 25, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)

                        TextField("I can change...", text: $change)
                            .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.black)
                            .accentColor(.black)
                    
                Text("Reward yourself for striving.")
                    .font(.system(size: 20, weight: .light, design: .rounded))
                  .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                
                NavigationLink(destination: GratitudeView()
                                .navigationBarHidden(true), label: {
                                    Image("Next Button Dark Midnight Blue")
                                        .resizable()
                                        .frame(width: 60, height: 60, alignment: .center)
                                })
                
            } //: VSTACK
                } //: SCROLL
            .navigationBarTitle(Text("Wednesday"), displayMode: .inline)
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

struct WednesdayView_Previews: PreviewProvider {
    static var previews: some View {
        WednesdayView()
    }
}
