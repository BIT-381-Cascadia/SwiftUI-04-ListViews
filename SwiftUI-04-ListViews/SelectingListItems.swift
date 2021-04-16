//
//  SelectingListItems.swift
//  SwiftUI-04-ListViews
//
//  Created by Mike Panitz on 4/14/21.
// 

import SwiftUI

struct SingleSelection: View {
    
    @State private var singleSelection: UUID?

    let courseList = [
        CascadiaCourse(title: "Intro to Programming"),
        CascadiaCourse(title: "Intermediate Programming"),
        CascadiaCourse(title: "Advanced Programming")
    ]

    var body: some View {
        VStack {
            NavigationView {
                List(selection: $singleSelection) {
                    ForEach(courseList, id: \CascadiaCourse.id) { course in
                        HStack {
                            Image(systemName: "square.and.pencil").font(Font.system(.largeTitle))
                            Text(course.title)
                        }
                    }
                }
                
                
                .navigationTitle("Calm The Storm")
                .toolbar {
                    EditButton()
                    
                }
            }
            
            if let selectedUuid = singleSelection {
                Text("You selected:\( selectedUuid)")
            } else {
                Text("You selected: Nothing")
            }

        }
    }
}



struct SelectingListItems_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelection()
    }
}
