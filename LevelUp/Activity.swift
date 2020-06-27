//
//  Activity.swift
//  LevelUp
//
//  Created by CJ Pais on 6/14/20.
//  Copyright © 2020 CJ Pais. All rights reserved.
//

import Foundation

public struct Activity: Codable, Hashable {
    
    enum ActivityMetric: String, Codable {
        case none = "none"
        case time = "time"
        case count = "count"
    }
    
    public static func == (lhs: Activity, rhs: Activity) -> Bool {
        if lhs.name == rhs.name && lhs.metric == rhs.metric && lhs.metricTitle == rhs.metricTitle {
            return true
        }
        
        return false
    }

    var name: String = ""
    var metric: ActivityMetric = .none
    var metricTitle: String = ""
    var linkedActivities: [Activity] = []
    
    
    
}
