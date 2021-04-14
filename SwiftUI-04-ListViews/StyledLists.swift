////
////  StyledLists.swift
////  SwiftUI-04-ListViews
////
////  Created by Mike Panitz on 4/13/21.
////
//
//import SwiftUI
//
//struct StyledLists: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//            NavigationLink(
//                destination: GroupedList().listStyle(PlainListStyle()).navigationBarTitle("PlainListStyle", displayMode: .inline) ,
//                label: {
//                    Text("PlainListStyle:").padding()
//                })
//                
//                NavigationLink(
//                    destination: GroupedList().listStyle(InsetListStyle()).navigationBarTitle("InsetListStyle", displayMode: .inline) ,
//                    label: {
//                        Text("InsetListStyle:").padding()
//                    })
//                
//                NavigationLink(
//                    destination: GroupedList().listStyle(InsetGroupedListStyle()).navigationBarTitle("InsetGroupedListStyle", displayMode: .inline) ,
//                    label: {
//                        Text("InsetGroupedListStyle:").padding()
//                    })
//                
//                NavigationLink(
//                    destination: GroupedList().listStyle(SidebarListStyle()).navigationBarTitle("SidebarListStyle", displayMode: .inline) ,
//                    label: {
//                        Text("SidebarListStyle:").padding()
//                    })
//            }
//            
//            // from https://developer.apple.com/documentation/swiftui/liststyle#relationships:
////            CarouselListStyle
////            DefaultListStyle
////            EllipticalListStyle
////            GroupedListStyle
////            InsetGroupedListStyle
////            InsetListStyle
////            PlainListStyle
////            SidebarListStyle
//        }
//    }
//}
//
//struct StyledLists_Previews: PreviewProvider {
//    static var previews: some View {
//        StyledLists()
//    }
//}
