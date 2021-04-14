//
//  GroupedList.swift
//  SwiftUI-04-ListViews
//
//  Created by Mike Panitz on 4/13/21.
//

import SwiftUI

struct DisciplineArea: Identifiable{
    let id = UUID()
    let name: String
    let courses: [CascadiaCourse]
}


struct GroupedList: View {
    
    let areas = [
        DisciplineArea(name:"BIT",
                       courses: [
                        CascadiaCourse(title: "Intro to Programming"),
                        CascadiaCourse(title: "Intermediate Programming"),
                        CascadiaCourse(title: "Advanced Programming")
                    ]),
        DisciplineArea(name:"English",
                       courses: [
                        CascadiaCourse(title: "Intro to Composition"),
                        CascadiaCourse(title: "Intermediate Literature"),
                        CascadiaCourse(title: "More English?")
                    ])
    ]
    
    
    var body: some View {
        VStack {
            Text("Cascadia's Courses:").font(.title)
            
            List {
                ForEach(areas) { area in
                    Section(header:Text("Area: \(area.name)")) {
                        ForEach(area.courses) { course in
                            CourseRow(whichCourse:course)
                        }
                    }   
                }
            }
        }
    }
}

struct GroupedList_Previews: PreviewProvider {
    static var previews: some View {
        GroupedList()
    }
}
