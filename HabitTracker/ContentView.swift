//
//  ContentView.swift
//  HabitTracker
//
//  Created by OLIVER GRIMM on 2019/11/09.
//  Copyright © 2019 OLIVER GRIMM. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var activities = Activities()
    @State private var showingAddView = false
    
    var body: some View {
        NavigationView {
            List(activities.items) { item in
                NavigationLink(destination: DetailView(activities: self.activities, detailItemID: item.id)) {
                    Text(item.title)
                }
            }
            .navigationBarTitle(Text("Activities"))
            .navigationBarItems(trailing: Button("Add") {
                self.showingAddView.toggle()
        })
                .sheet(isPresented: $showingAddView) {
                    AddView(activities: self.activities)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        activities.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
