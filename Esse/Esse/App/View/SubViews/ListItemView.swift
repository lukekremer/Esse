//
//  ListItemView.swift
//  Esse
//
//  Created by Luke Kremer on 1/23/21.
//

import SwiftUI

struct ListItemView: View {
    
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(entity: Journal.entity(), sortDescriptors: [NSSortDescriptor(keyPath: \Journal.date, ascending: true)]) var entries: FetchedResults<Journal>
    
    var body: some View {
        ZStack {
            ForEach(self.entries, id: \.self) { journal in
                VStack {
                    Text(journal.hear ?? "")
                    
                    Spacer()
                    
                    Text(journal.see ?? "")
                }
            } //: FOREACH
        } //: ZSTACK
        .frame(width: 350, height: 600)
        .background(Image("GoldBackground").resizable())
        .cornerRadius(25)
        .shadow(radius: 10)
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView()
            
    }
}
