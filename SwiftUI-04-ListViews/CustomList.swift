//
//  CustomList.swift
//  SwiftUI-04-ListViews
//
//  Created by Student Account on 4/14/21.
//

import SwiftUI

struct CustomList: View {
    
    @State private var submitButton = false
    
    @State private var username: String = ""
    @State private var isEditing = false
    
    var body: some View {
        
        TabView {
            
            if submitButton {
                Text("Hello there,\n\(username)!")
            }
            ZStack {
                    Color.blue
                        .ignoresSafeArea()
            VStack {
        List {
            
                        Color.blue
                            .ignoresSafeArea()
            Text("Hello, Mike!" )
            
            
                Image(systemName: "square.and.arrow.up")
            HStack {
                Image(systemName: "external")
                TextField(
                     "User name (email address)\n",
                      text: $username
                 )
                {isEditing in
                     self.isEditing = isEditing
                }
                 .autocapitalization(.none)
                 .disableAutocorrection(true)
                 .border(Color(UIColor.separator))
                
                 Text(username)
                     .foregroundColor(isEditing ? .red : .blue)
             }
           
                
        }
        }
                VStack {
                
                        Button("SUBMIT") {submitButton.toggle()}
                            
                        .foregroundColor(.blue)
                        .background(Color.orange)
                            .font(.system(size: 100))
                    
        }
        }
        }
                    .tabItem {
                        Text("Tab 1")}
                Button("ALSO SUBMIT"){submitButton.toggle()}
                .foregroundColor(.blue)
                .background(Color.orange)
                .tabItem {
                    Text("Tab 2")}
            }
    
}
        
    

struct CustomList_Previews: PreviewProvider {
    static var previews: some View {
        CustomList()
    }
}
