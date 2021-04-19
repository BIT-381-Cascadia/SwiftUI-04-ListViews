//
//  MyListItems.swift
//  SwiftUI-04-ListViews
//
//  Created by Anton Tran on 4/19/21.
//

import SwiftUI

struct WorkoutSelection : Identifiable {
    let id = UUID()
    let title: String
}

struct MyListItems: View {
    
    @State private var multiSelection = Set<UUID>()
    @State private var singleSelection: UUID?

    let workoutList = [
        WorkoutSelection(title: "Push Ups"),
        WorkoutSelection(title: "Sit ups"),
        WorkoutSelection(title: "Bench Press")
    ]
    var body: some View {
        VStack {
            NavigationView {
                List(selection: $singleSelection) {
                    ForEach(workoutList, id: \WorkoutSelection.id) { course in
                        HStack {
                            Image(systemName: "square.and.pencil").font(Font.system(.largeTitle))
                            Text(course.title)
                        }
                    }
                }
                .navigationTitle("Workout Selection")
                .toolbar {
                    EditButton()
                }
            }
            
            if let selectedUuid = singleSelection {
                Text("Selected Item:\( selectedUuid)")
            } else {
                Text("Item Selected: Nothing")
            }

        }
    }
}

struct MyListItems_Previews: PreviewProvider {
    static var previews: some View {
        MyListItems()
    }
}
