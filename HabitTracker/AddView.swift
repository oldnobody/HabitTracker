//
//  AddView.swift
//  HabitTracker
//
//  Created by OLIVER GRIMM on 2019/11/10.
//  Copyright © 2019 OLIVER GRIMM. All rights reserved.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var activities: Activities
    @State private var title = ""
    @State private var description = ""
    
    var body: some View {
            Form {
                Section(header: Text("Add a new activity")) {
                    TextField("Title", text: $title)
                    TextField("Description", text: $description)
                }
                Section {
                    Button("Add") {
                        let id = self.activities.count 
                        let activity = ActivityItem(id: id, title: self.title, description: self.description)
                        self.activities.add(activity)
                        self.presentationMode.wrappedValue.dismiss()
                        }
                }
            }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(activities: Activities())
    }
}
