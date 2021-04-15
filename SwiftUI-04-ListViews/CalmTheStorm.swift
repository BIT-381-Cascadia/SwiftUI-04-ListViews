//
//  CalmTheStorm.swift
//  SwiftUI-04-ListViews
//
//  Created by Student Account on 4/14/21.
//

import SwiftUI

struct DisasterType : Identifiable {
    let id = UUID()
    let title: String
    }

struct DisasterRow: View {
    let whichDisaster: DisasterType
    
    var body: some View {
        HStack {
            Text(" \(whichDisaster.title)")
        }
    }
}

struct DisasterList: View {
    
    let disasterList = [
        DisasterType(title: "- Try to find a ditch."),
        DisasterType(title: "- Stay away from windows."),
        DisasterType(title: "- If you can't get to a cellar, go into a bathroom."),
        DisasterType(title: "- Cover head and neck area with hands.")
    ]
    
    var body: some View {
        VStack {
            HStack{
            Image(systemName: "tornado")
                .font(.system(size: 40))
                .frame(width: 22.0, height: 22.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("Tornado:").font(.title).fontWeight(.regular)
        }
            List(disasterList) { aDisaster in
                DisasterRow(whichDisaster:aDisaster)
            }
            
        }
    }
}

struct DisasterList_Previews: PreviewProvider {
    static var previews: some View {
        DisasterList()
    }
}
