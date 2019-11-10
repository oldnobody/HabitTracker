//
//  Activities.swift
//  HabitTracker
//
//  Created by OLIVER GRIMM on 2019/11/09.
//  Copyright © 2019 OLIVER GRIMM. All rights reserved.
//

import Foundation

class Activities: ObservableObject {
    
    @Published var items = [ActivityItem]() {
        didSet {
            let encoder = JSONEncoder()
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Activities")
            }
        }
    }
    
    var count: Int {
        self.items.count
    }
    
    init() {
        if let items = UserDefaults.standard.data(forKey: "Activities") {
            let decoder = JSONDecoder()
            if let decoded = try? decoder.decode([ActivityItem].self, from: items) {
                self.items = decoded
                return
            }
        }
        self.items = []
    }
    
    func add(_ activity: ActivityItem) {
        self.items.append(activity)
    }
}
