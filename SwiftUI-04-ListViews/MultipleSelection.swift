//
//  MultipleSelection.swift
//  SwiftUI-04-ListViews
//
//  Created by Mike Panitz on 4/14/21.
//

import SwiftUI

struct MultipleSelection: View {
    @State private var multiSelection = Set<UUID>()
  

    let itemList = [
        CascadiaCourse(title: "Water"),
        CascadiaCourse(title: "Food"),
        CascadiaCourse(title: "Flashlight"),
        CascadiaCourse(title: "Extra Batteries"),
        CascadiaCourse(title: "Firs Aid Kit"),
        CascadiaCourse(title: "Manual Can Opener")
    ]
    
  

    var body: some View {
        VStack {
            NavigationView {
                List(selection: $multiSelection) {
                    ForEach(itemList, id: \CascadiaCourse.id) { Kit in
                        HStack {
                            Image(systemName: "circle").font(Font.system(.largeTitle))
                            Text(Kit.title)
                        }
                    }
                    
                }
                .navigationTitle("Survival Kit")
                .toolbar {
                    EditButton()
                }
            }

            if multiSelection.count == 0 {
                Text("You haven't selected anything")
            } else {
                List {
                    ForEach(Array(multiSelection), id:\.self) { selected in
                        Text("You selected: \(selected)")
                        
                    }
                    
                }
            }
        }
    }



struct MultipleSelection_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSelection()
    }
  }
}

