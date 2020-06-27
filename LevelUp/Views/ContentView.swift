//
//  ContentView.swift
//  LevelUp
//
//  Created by CJ Pais on 6/14/20.
//  Copyright © 2020 CJ Pais. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var query: String = ""
    @State var sheetActive: Bool = false
    //@State var activities: [Activity] = [Activity(name: "Hand Eye Coordination", metric: .time, metricTitle: "Goal", linkedActivities: []), Activity(name: "Beers Opened w/weird objects", metric: .count, metricTitle: "Number", linkedActivities: [])]
    @State var activities: [Activity] = []
    
    var newActivityButton: some View {
        Button(action: {
            self.sheetActive = true
            //let newActivity = Activity(name: self.query, metric: .time, metricTitle: "lol", linkedActivities: [])
        }) {
            Image(systemName: "plus.circle.fill")
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    SearchBar(query: $query) {
                        print("searched")
                    }
                    .cornerRadius(13)
                    .padding(.leading)
                    
                    newActivityButton
                        .accentColor(.green)
                        .padding(.trailing)
                        .padding(.leading, 7)
                        .font(.system(size: 23))
                        .sheet(isPresented: self.$sheetActive) {
                            NewActivityView()
                        }
                }.padding(.bottom)
                
                ForEach(activities, id: \.self) { activity in
                    NavigationLink(destination: SingleActivityView(activity: activity)) {
                        ActivitySummaryView(activity: activity)
                            .padding([.horizontal, .bottom])
                    }
                }

                Spacer()
            }
            .navigationBarTitle("Activities")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
