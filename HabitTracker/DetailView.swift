//
//  DetailView.swift
//  HabitTracker
//
//  Created by OLIVER GRIMM on 2019/11/10.
//  Copyright © 2019 OLIVER GRIMM. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    let description: String
    let count: Int
    
    var body: some View {
        VStack {
            Text(description)
            Text("Count: \(count)")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static let testActivity = Activity(id: 1, title: "Some title", description: "some description", count: 2)
    static var previews: some View {
        
        DetailView(description: testActivity.description, count: testActivity.count)
    }
}
