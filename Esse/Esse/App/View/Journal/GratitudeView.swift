//
//  GratitudeView.swift
//  Esse
//
//  Created by Luke Kremer on 1/14/21.
//

import SwiftUI

struct GratitudeView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var date: String = ""
    @State private var day: String = ""
    @State private var gratitude1: String = ""
    @State private var gratitude2: String = ""
    @State private var gratitude3: String = ""
    @State private var gratitude4: String = ""
    @State private var gratitude5: String = ""
    @State private var meditation: String = ""

    let answers = ["Yes", "No"]
    
    @State private var errorShowing: Bool = false
    @State private var errorTitle: String = ""
    @State private var errorMessage: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("BlueBackground")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                ScrollView(showsIndicators: false) {
            VStack (spacing: 20) {
                    
                         // MARK: - 1
                Text("List 5 things you are grateful for:")
                 .font(.system(size: 25, weight: .light, design: .rounded))
                 .foregroundColor(.white)
                 .multilineTextAlignment(.center)
                                 
                             TextField("#1", text: $gratitude1)
                                 .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.white)
                                .accentColor(.white)
                         
                         // MARK: - 2
                                 
                         TextField("#2", text: $gratitude2)
                             .padding()
                            .background(Color(UIColor.tertiarySystemFill))
                            .cornerRadius(50)
                            .font(.system(size: 25, weight: .light, design: .rounded))
                            .foregroundColor(.white)
                            .accentColor(.white)
                             
                         // MARK: - 3
                                 TextField("#3", text: $gratitude3)
                             .padding()
                                    .background(Color(UIColor.tertiarySystemFill))
                                    .cornerRadius(50)
                                    .font(.system(size: 25, weight: .light, design: .rounded))
                                    .foregroundColor(.white)
                                    .accentColor(.white)
                    
                    // MARK: - 4
                            TextField("#4", text: $gratitude4)
                        .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.white)
                                .accentColor(.white)

                    // MARK: - 5
                            TextField("#5", text: $gratitude5)
                        .padding()
                                .background(Color(UIColor.tertiarySystemFill))
                                .cornerRadius(50)
                                .font(.system(size: 25, weight: .light, design: .rounded))
                                .foregroundColor(.white)
                                .accentColor(.white)
                    
                Text("Did you meditate today?")
                 .font(.system(size: 25, weight: .light, design: .rounded))
                 .foregroundColor(.white)
                 .multilineTextAlignment(.center)
                                                    
                                Picker(selection: $meditation,
                            label: Text("Meditate")) {
                            ForEach(answers, id: \.self) {
                                Text($0)
                }
                            }
                                .background(Color(UIColor.tertiarySystemFill))
                                    .pickerStyle(SegmentedPickerStyle())
                        
                
                HStack {
                                            Spacer()
                                            Button(action: {
                                                
                                                presentationMode.wrappedValue.dismiss()
                                        }) {
                                            HStack {
                                                Text("Save".uppercased())
                                                .fontWeight(.heavy)
                                                .foregroundColor(Color.white)
                                                .accentColor(Color.white)
                                                
                                            Image(systemName: "checkmark.circle")
                                                .font(Font.title.weight(.medium))
                                                .accentColor(Color.white)
                                            } //: HSTACK
                                            .padding()
                                            
                                        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGold"), Color("ColorGoldDark")]), startPoint: .leading, endPoint: .trailing))
                                                .cornerRadius(50)
                                                .padding()
                                            }
                                            Spacer()
                }
                
            } //: VSTACK
                } //: SCROLL
            .navigationBarTitle(Text ("Gratitude"), displayMode: .inline)
            .padding()
            
            .alert(isPresented: $errorShowing) {
                Alert(title: Text(errorTitle), message: Text(errorMessage), dismissButton: .default(Text("Okay")))
            }
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

struct GratitudeView_Previews: PreviewProvider {
    static var previews: some View {
        GratitudeView()
    }
}
