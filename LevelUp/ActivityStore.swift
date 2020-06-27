//
//  ActivityStore.swift
//  LevelUp
//
//  Created by CJ Pais on 6/14/20.
//  Copyright © 2020 CJ Pais. All rights reserved.
//

import Foundation

class ActivityStore {
    static let instance = ActivityStore()
    private var activities: [Activity] = []
    
    private init() {
        let activityFilePath = getDocumentsDirectory().appendingPathComponent("activities").path
        guard let data = NSKeyedUnarchiver.unarchiveObject(withFile: activityFilePath) as? Data else {
            return
        }

        do {
            activities = try PropertyListDecoder().decode([Activity].self, from: data)
        } catch {
            print(error)
        }
    }

    public func addActivity(newActivity: Activity) {
        let activityFilePath = getDocumentsDirectory().appendingPathComponent("activities").path
        self.activities.append(newActivity)
        
        NSKeyedArchiver.archiveRootObject(self.activities, toFile: activityFilePath)
    }
    
    
    public func getActivities() -> [Activity] {
        return self.activities
    }
    
}
