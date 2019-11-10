//
//  DetailView.swift
//  HabitTracker
//
//  Created by OLIVER GRIMM on 2019/11/10.
//  Copyright © 2019 OLIVER GRIMM. All rights reserved.
//

import SwiftUI

// TODO: add "increase count" button

struct DetailView: View {
    
    @ObservedObject var activities: Activities
    @State private var count = 0
    let detailItemID: Int
    private var detailItem: ActivityItem
    
    init(activities: Activities, detailItemID: Int) {
        self.activities = activities
        self.detailItemID = detailItemID
        
        self.detailItem = activities.items[detailItemID]
    }
    
    var body: some View {
        VStack {
            Text(detailItem.description)
            Text("Count: \(detailItem.count)")
            Text("Id: \(detailItem.id)")
            Button("Add one to count") {
                self.activities.items[self.detailItemID].count += 1
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(activities: Activities(), detailItemID: 0)
    }
}
