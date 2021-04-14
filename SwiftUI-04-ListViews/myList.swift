//
//  myList.swift
//  SwiftUI-04-ListViews
//
//  Created by Student Account on 4/14/21.
//
import SwiftUI

struct EventInfo : Identifiable {
    let id = UUID()
    let title: String
}

struct EventInfoRow: View {
    let whichEvent: EventInfo
    
    var body: some View {
        HStack {
            Text("Event Title:\n\(whichEvent.title)");
            Image(systemName: "star").padding(20)
        }
    }
}

struct MyList: View {
    
    let EventList = [
        EventInfo(title: "Tournament 1/1 Park"),
        EventInfo(title: "League A Team 2 vs 3 1/4"),
        EventInfo(title: "League B Team 2 vs 3 1/4")
    ]
    
    var body: some View {
        VStack {
            Text("Ultimate Events:").font(.title)
            
            List(EventList) { aEvent in
                EventInfoRow(whichEvent:aEvent)
            }
            
            Text("Same Events Diff Code:")
            List(EventList, rowContent: EventInfoRow.init)
        }
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
