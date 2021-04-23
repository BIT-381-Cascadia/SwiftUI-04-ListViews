//
//  MyList.swift
//  SwiftUI-04-ListViews
//
//  Created by Student Account on 4/23/21.
//

import SwiftUI

let data = ["App 1", "App 2", "App 3", "App 4"]

struct MyList: View {
    var body: some View {
        HStack{
            
        Text("Application List")
        List{
            ForEach(data, id: \.self){ myRow in
                Text(myRow)
            }
        }
        }
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
