//
//  JobListView.swift
//  SwiftUI-04-ListViews
//
//  Created by Stephen Gomez-Fox on 5/2/21.
//

import SwiftUI

struct Store: Identifiable{
    let id = UUID()
    let name: String
    let jobs: [Job]
}

struct Job : Identifiable {
    let id = UUID()
    let desc: String
}

struct JobRow: View {
    let job: Job
    
    var body: some View {
        HStack {
            Text("\(job.desc)")
        }
    }
}

struct JobListView: View {
    
    @State private var selection: UUID?
    
    let stores = [
        Store(name:"Bothell",
                       jobs: [
                        Job(desc: "General Manager"),
                        Job(desc: "Customer Service"),
                        Job(desc: "Cashier")
                    ]),
        Store(name:"Tacoma",
                       jobs: [
                        Job(desc: "Shift Lead"),
                        Job(desc: "Inventory Control"),
                        Job(desc: "Custodian")
                    ])
    ]
    
    var body: some View {
        VStack {
            Text("Available Jobs").font(.title)
            
            List {
                ForEach(stores) { store in
                    Section(header:Text("Store: \(store.name)")) {
                        ForEach(store.jobs) { job in
                            JobRow(job: job)
                        }
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct JobListView_Previews: PreviewProvider {
    static var previews: some View {
        JobListView()
    }
}
