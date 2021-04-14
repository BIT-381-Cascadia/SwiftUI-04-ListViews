//
//  DynamicList.swift
//  SwiftUI-04-ListViews
//
//  Created by Mike Panitz on 4/13/21.
//

import SwiftUI

struct CascadiaCourse : Identifiable {
    let id = UUID()
    let title: String
}

struct CourseRow: View {
    let whichCourse: CascadiaCourse
    
    var body: some View {
        HStack {
            Text("Course title:\n\(whichCourse.title)")
        }
    }
}

struct DynamicList: View {
    
    let courseList = [
        CascadiaCourse(title: "Intro to Programming"),
        CascadiaCourse(title: "Intermediate Programming"),
        CascadiaCourse(title: "Advanced Programming")
    ]
    
    var body: some View {
        VStack {
            Text("Cascadia's Courses:").font(.title)
            
            List(courseList) { aCourse in
                CourseRow(whichCourse:aCourse)
            }
            
            Text("More concise code:")
            List(courseList, rowContent: CourseRow.init)
        }
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
