//
//  StaticList.swift
//  SwiftUI-04-ListViews
//
//  Created by Mike Panitz on 4/13/21.
//

import SwiftUI

// UITableView
struct StaticList: View {
    var body: some View {
        List {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Text("Row #2")
            HStack {
                Image(systemName: "star")
                Text("Row with image")
            }
            FancyRow()
        }
    }
}

struct FancyRow: View {
    var body: some View {
        VStack {
            Text("Hi")
            HStack {
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
                Image(systemName: "star")
            }
        }
        .padding()
        .background(Color.white)
        .padding(5)
        .background(Color.blue)
        .padding(5)
        .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        
    }
}

struct StaticList_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}
