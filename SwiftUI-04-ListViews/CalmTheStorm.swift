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
            Text("Disaster Type: \(whichDisaster.title)")
        }
    }
}

struct DisasterList: View {
    
    let disasterList = [
        DisasterType(title: "Tornado"),
        DisasterType(title: "Wildfire"),
        DisasterType(title: "Volcano"),
        DisasterType(title: "Earthquake")
    ]
    
    var body: some View {
        VStack {
            Image(systemName: "tropicalstorm")
                .font(.system(size: 40))
                .frame(width: 22.0, height: 22.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Text("Disasters:").font(.title)
            
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
