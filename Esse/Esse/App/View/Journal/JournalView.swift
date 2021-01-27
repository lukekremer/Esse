//
//  JournalView.swift
//  Esse
//
//  Created by Luke Kremer on 1/2/21.
//

import SwiftUI

struct JournalView: View {
  //  MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @State private var showIdentify = true
    @State private var showReflect = false
    @State private var showSunday = false
    @State private var showMonday = false
    @State private var showTuesday = false
    @State private var showWednesday = false
    @State private var showThursday = false
    @State private var showFriday = false
    @State private var showSaturday = false
    @State private var showGratitude = false

    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack{
                background(Color(.black))
            }
            ScrollView(showsIndicators: false) {
            VStack {
                if showIdentify == true {
                   IdentifyView()
                }
                
                if showReflect == true {
                    ReflectView()
                }
                
                if showSunday == true {
                    SundayView()
                }
                
                if showMonday == true {
                    MondayView()
                }
                
                if showTuesday == true {
                    TuesdayView()
                }
                
                if showWednesday == true {
                    WednesdayView()
                }
                
                if showThursday == true {
                    ThursdayView()
                }
                
                if showFriday == true {
                    FridayView()
                }
                
                if showSaturday == true {
                    SaturdayView()
                }
                
                if showGratitude == true {
                    GratitudeView()
                }
                
            } //: VSTACK
            } //: SCROLL
            .navigationBarTitle(Text("Journal"), displayMode: .inline)
            .padding()
            .navigationBarItems(trailing:
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Text("Cancel")
                                            .fontWeight(.thin)
                                    }
          )
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
        }
    }

// MARK: - PREVIEW

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
            
    }
}
