//
//  Activities.swift
//  HabitTracker
//
//  Created by OLIVER GRIMM on 2019/11/09.
//  Copyright © 2019 OLIVER GRIMM. All rights reserved.
//

import Foundation

class Activities: ObservableObject {
    
    @Published var activities: [Activity]
    
    var count: Int {
        self.activities.count
    }
    
    init() {
        self.activities = [Activity]()
//        self.testActivities()
    }
    
    func add(_ activity: Activity) {
        self.activities.append(activity)
    }
    
    func testActivities() {
        let activity = Activity(id: 1, title: "Test1", description: "some description", count: 1)
        self.activities.append(activity)
    }
}
