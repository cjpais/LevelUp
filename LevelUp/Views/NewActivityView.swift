//
//  NewActivityView.swift
//  LevelUp
//
//  Created by CJ Pais on 6/14/20.
//  Copyright © 2020 CJ Pais. All rights reserved.
//

import SwiftUI

struct NewActivityView: View {
    
    @State private var activityName: String = ""

    var body: some View {
        VStack() {
            
            ZStack(alignment: .leading) {
                Text("New Activity")
                    .font(.title).bold()
                    .padding()
            }
            
            Form {
                Section(header: Text("ACTIVITY")) {
                    TextField("Activity Name", text: $activityName)
                }
                
                Section() {
                    Button(action: {
                        
                    }) {
                        Text("Create Activity")
                    }.disabled(activityName == "")
                }
            }

            if activityName != "" {
                Button(action: {
                    
                }) {
                    Text("Create \(self.activityName)")
                        .foregroundColor(.white)
                }
                .background(Color.purple)
            }
        }
    }
}

struct NewActivityView_Previews: PreviewProvider {
    static var previews: some View {
        NewActivityView()
    }
}
