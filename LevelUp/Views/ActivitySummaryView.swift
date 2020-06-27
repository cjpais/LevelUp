//
//  ActivitySummaryView.swift
//  LevelUp
//
//  Created by CJ Pais on 6/14/20.
//  Copyright © 2020 CJ Pais. All rights reserved.
//

import SwiftUI

struct ActivitySummaryView: View {
    
    var activity: Activity = Activity()
    var length: Int = Int.random(in: 30...350)
    
    var body: some View {
        VStack {
            HStack {
                Text(activity.name)
                    .font(.title).bold()
                    .foregroundColor(.white)
                Spacer()
            }
            
            
            Group {
                HStack {
                    Image(systemName: "clock.fill")
                        .foregroundColor(.gray)
                    Text("12 hours")
                        .foregroundColor(.purple)
                    Spacer()
                }

                /*
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(height: 10)
                        .cornerRadius(5)
                        .foregroundColor(.gray)
                    Rectangle()
                        .frame(width: CGFloat(length), height: 10)
                        .cornerRadius(5)
                        .foregroundColor(.pink)
                }*/
            }

        }
        .padding()
        .background(Color(UIColor.systemGray6))
        .cornerRadius(11)
    }
}

struct ActivitySummaryView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitySummaryView()
    }
}
