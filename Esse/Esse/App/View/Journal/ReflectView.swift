//
//  ReflectView.swift
//  Esse
//
//  Created by Luke Kremer on 1/12/21.
//

import SwiftUI

struct ReflectView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State private var date: String = ""
    @State private var experience1: String = ""
    @State private var experience2: String = ""
    @State private var experience3: String = ""
    @State private var day: String = ""
    let days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Image("BlueBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                        // MARK: - REFLECT
                                                             
                             // MARK: - EXPERIENCE 1
                   Text("What were the 3 most significant experiences of the day?")
                    .font(.system(size: 25, weight: .light, design: .rounded))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                                     
                                 TextField("#1", text: $experience1)
                                     .padding()
                                    .background(Color(UIColor.tertiarySystemFill))
                                    .cornerRadius(50)
                                    .font(.system(size: 25, weight: .light, design: .rounded))
                                    .foregroundColor(.white)
                                    .accentColor(.white)
                             
                             // MARK: - EXPERIENCE 2
                                     
                             TextField("#2", text: $experience2)
                                 .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.white)
                                .accentColor(.white)
                    
                             // MARK: - EXPERIENCE 3

                    TextField("#3", text: $experience3)
                                 .padding()
                                        .background(Color(UIColor.tertiarySystemFill))
                                        .cornerRadius(50)
                                        .font(.system(size: 25, weight: .light, design: .rounded))
                                        .foregroundColor(.white)
                                        .accentColor(.white)
                             
                    Spacer()
                    
                    Text("Date:")
                     .font(.system(size: 25, weight: .light, design: .rounded))
                     .foregroundColor(.white)
                    
                    TextField("xx/xx/xxxx", text: $date)
                                 .padding()
                                        .background(Color(UIColor.tertiarySystemFill))
                                        .cornerRadius(50)
                                        .font(.system(size: 25, weight: .light, design: .rounded))
                                        .foregroundColor(.white)
                                        .accentColor(.white)
                    
                             PickerView()
                    
                } //: VSTACK
                .navigationBarTitle(Text("Reflect on the Day"), displayMode: .inline)
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
            } 
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ReflectView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectView()
    }
}
