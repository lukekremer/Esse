//
//  PickerView.swift
//  Esse
//
//  Created by Luke Kremer on 1/22/21.
//

import SwiftUI

struct PickerView: View {
    
    @State private var day: String = ""
    let days = ["Sun", "Mon", "Tues", "Wed", "Thurs", "Fri", "Sat"]
    
    var body: some View {
        
        Picker(selection: $day, label: Text("Day of the Week")) {
        ForEach(days, id: \.self) {
            Text($0)
        }
    }
        .background(Color(UIColor.tertiarySystemFill))
        .pickerStyle(SegmentedPickerStyle())
   
   if day == "Sun" {
       NavigationLink(
           destination: SundayView()
               .navigationBarHidden(true),
           label: {
            Image("Next Button Gold")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
           })
   }
   
   if day == "Mon" {
       NavigationLink(
           destination: MondayView()
               .navigationBarHidden(true),
           label: {
            Image("Next Button Gold")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
           })
   }
   
   if day == "Tues" {
       NavigationLink(
           destination: TuesdayView()
               .navigationBarHidden(true),
           label: {
            Image("Next Button Gold")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
           })
   }
   
   if day == "Wed" {
       NavigationLink(
           destination: WednesdayView()
               .navigationBarHidden(true),
           label: {
            Image("Next Button Gold")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
           })
   }
   
   if day == "Thurs" {
       NavigationLink(
           destination: ThursdayView()
               .navigationBarHidden(true),
           label: {
            Image("Next Button Gold")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
           })
   }
   
   if day == "Fri" {
       NavigationLink(
           destination: FridayView()
               .navigationBarHidden(true),
           label: {
            Image("Next Button Gold")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
           })
   }
   
   if day == "Sat" {
       NavigationLink(
           destination: SaturdayView()
               .navigationBarHidden(true),
           label: {
            Image("Next Button Gold")
                .resizable()
                .frame(width: 60, height: 60, alignment: .center)
           })
   }
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
