////
////  MultipleSelection.swift
////  SwiftUI-04-ListViews
////
////  Created by Mike Panitz on 4/14/21.
////
//
//import SwiftUI
//
//struct MultipleSelection: View {
//    @State private var multiSelection = Set<UUID>()
//
//    let courseList = [
//        CascadiaCourse(title: "Intro to Programming"),
//        CascadiaCourse(title: "Intermediate Programming"),
//        CascadiaCourse(title: "Advanced Programming")
//    ]
//
//    var body: some View {
//        VStack {
//            NavigationView {
//                List(selection: $multiSelection) {
//                    ForEach(courseList, id: \CascadiaCourse.id) { course in
//                        HStack {
//                            Image(systemName: "square.and.pencil").font(Font.system(.largeTitle))
//                            Text(course.title)
//                        }
//                    }
//                }
//                .navigationTitle("List Selection")
//                .toolbar {
//                    EditButton()
//                }
//            }
//            
//            if multiSelection.count == 0 {
//                Text("You haven't selected anything")
//            } else {
//                List {
//                    ForEach(Array(multiSelection), id:\.self) { selected in
//                        Text("You selected: \(selected)")
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct MultipleSelection_Previews: PreviewProvider {
//    static var previews: some View {
//        MultipleSelection()
//    }
//}
