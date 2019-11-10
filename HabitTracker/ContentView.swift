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
            List(activities.activities) { activity in
                NavigationLink(destination: DetailView(description: activity.description, count: activity.count)) {
                    Text(activity.title)
                }
            }
            .navigationBarTitle(Text("Activities"))
            .navigationBarItems(trailing: Button("Add") {
                self.showingAddView = true
        })
                .sheet(isPresented: $showingAddView) {
                    AddView(activities: self.activities)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
