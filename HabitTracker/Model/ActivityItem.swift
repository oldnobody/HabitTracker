//
//  Activity.swift
//  HabitTracker
//
//  Created by OLIVER GRIMM on 2019/11/09.
//  Copyright © 2019 OLIVER GRIMM. All rights reserved.
//

import Foundation

struct ActivityItem: Codable, Identifiable {
    let id: Int
    var title: String
    var description: String
    var count: Int = 0
}
