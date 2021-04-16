//
//  InClassList.swift
//  SwiftUI-04-ListViews
//
//  Created by Sean Jones on 4/16/21.
//

import SwiftUI

struct InClassList: View {
    @State private var multiSelection = Set<UUID>()
    @State private var singleSelection: UUID?


    let courseList = [
        CascadiaCourse(title: "List One"),
        CascadiaCourse(title: "List Two"),
        CascadiaCourse(title: "List Three"),
        CascadiaCourse(title: "List Four"),
        CascadiaCourse(title: "List Five")
    ]

    var body: some View {

        VStack {
            NavigationView {
                
                List(selection: $singleSelection) {
                    ForEach(courseList, id: \CascadiaCourse.id) { course in
                        HStack {
                            
                        
                            Image(systemName: "trash.fill").font(Font.system(.largeTitle))
                                
                                .foregroundColor(.green)
    
                            Text(course.title)
                                
                        }
                    }
                }
                .navigationTitle("In class list")
                .foregroundColor(.red)
                .toolbar{
                    EditButton()
                        .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                }
            }
            
            if let selectedUuid = singleSelection {
                Text("Demo Select:\( selectedUuid)")
                    .foregroundColor(.pink)
            } else {
                Text("You selected: Zero")
                    .foregroundColor(.pink)
            }
            

        }
    }
}

struct InClassList_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelection()
            .font(.largeTitle)
            .foregroundColor(.purple)
    }
}
