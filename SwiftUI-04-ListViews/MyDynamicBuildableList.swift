//
//  MyDynamicBuildableList.swift
//  SwiftUI-04-ListViews
//
//  Created by ROBERT BRONSON on 4/14/21.
//

import SwiftUI

struct KitItem : Identifiable{
    let id = UUID()
    let description : String
    let checked = false
}

struct KitRow: View {
    let currentKitItem : KitItem
    var body: some View {
        Text(currentKitItem.description)
    }
}

struct MyDynamicBuildableList: View {
    @State private var newDescription = ""
    @State var kitList : [KitItem] = [KitItem(description:"First kit item"), KitItem(description: "Second kit item"), KitItem(description: "Third kit item")];
    
    func addNewItem(itemText:String){
        kitList.append(KitItem(description: itemText));
        newDescription = ""
    }

    var body: some View {
        VStack{
            Text("Take THAT, Dynamic List!")
            HStack{
                Image(systemName: "pencil.and.outline")
                Text("Here's my Image")
            }
            Text("List count: \(kitList.count)")
            
            Form{
                HStack{
                    Section { TextField("New Item", text: $newDescription)}
                    Button(action: {addNewItem(itemText: newDescription) }, label: {
                        Text("Submit")
                            .padding(5.0)
                            .border(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                    })
                }
                Section {Text("\(newDescription)")}
            }
            List(kitList, rowContent: KitRow.init)
        }
        
    }
}

struct MyDynamicBuildableList_Previews: PreviewProvider {
    static var previews: some View {
        MyDynamicBuildableList()
    }
}
