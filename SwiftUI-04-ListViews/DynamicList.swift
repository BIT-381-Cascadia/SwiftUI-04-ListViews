//
//  DynamicList.swift
//  SwiftUI-04-ListViews
//
//  Created by Mike Panitz on 4/13/21.
//

import SwiftUI

struct CascadiaCourse : Identifiable {
    let id = UUID()
    let img: String
    let title: String
    
}

struct CourseRow: View {
    let whichCourse: CascadiaCourse
    var body: some View {
        HStack {
            Image(systemName: whichCourse.img)
            Button(whichCourse.title){
                print("button pressed")
            }
            //Text((whichCourse.title))
        }
    }
}

struct DynamicList: View {
    
    let courseList = [
        CascadiaCourse(img: "text.bubble.fill", title: "Texting"),
        CascadiaCourse(img: "envelope.fill", title: "Email"),
        CascadiaCourse(img: "phone.circle.fill", title: "Some other phone thing")
    ]
    
    var body: some View {
        VStack {
            Text("Sample Tutorials:").font(.title)
            
            List(courseList) { aCourse in
                CourseRow(whichCourse:aCourse)
            }
            
//            Text("More concise code:")
//            List(courseList, rowContent: CourseRow.init)
        }
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
