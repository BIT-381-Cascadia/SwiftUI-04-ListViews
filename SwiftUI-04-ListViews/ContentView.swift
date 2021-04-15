//
//  ContentView.swift
//  SwiftUI-04-ListViews
//
//  Created by Mike Panitz on 4/13/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
            NavigationLink(
                destination: StaticList().navigationBarTitle("Static List", displayMode: .inline) ,
                label: {
                    Text("Static List").padding()
                })
                
                NavigationLink(
                    destination: DynamicList().navigationBarTitle("Dynamic List", displayMode: .inline) ,
                    label: {
                        Text("Dynamic List").padding()
                    })
                
                NavigationLink(
                    destination: GroupedList().navigationBarTitle("Grouped List", displayMode: .inline) ,
                    label: {
                        Text("Grouped List").padding()
                    })
                
                NavigationLink(
                    destination: StyledLists().navigationBarTitle("Styled List", displayMode: .inline) ,
                    label: {
                        Text("Styled List").padding()
                    })
                
                NavigationLink(
                    destination: SingleSelection().navigationBarTitle("Selecting Single List Items", displayMode: .inline) ,
                    label: {
                        Text("Selecting Single List Items").padding()
                    })
                
                NavigationLink(
                    destination: MultipleSelection().navigationBarTitle("Selecting Multiple List Items", displayMode: .inline) ,
                    label: {
                        Text("Selecting Multiple List Items").padding()
                    })
                
                NavigationLink(
                    destination: DisasterList().navigationBarTitle("View Disaster Types", displayMode: .inline) ,
                    label: {
                        Text("View Disaster Types").padding()
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
