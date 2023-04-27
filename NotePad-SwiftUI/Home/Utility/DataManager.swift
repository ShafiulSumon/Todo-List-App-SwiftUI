//
//  DataManager.swift
//  NotePad-SwiftUI
//
//  Created by ShafiulAlam-00058 on 3/28/23.
//

import SwiftUI

enum Filter: String, CaseIterable {
    case today = "Today"
    case yesterday = "Yesterday"
    case last_week = "Last week"
    case last_month = "Last month"
}

class DataManager: ObservableObject {
    
    @Published var filteredTaskList: [TaskData] = []
    
    func FilterOutData(taskList: [TaskData], filter: Filter) {
        
        var temp: [TaskData] = []
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss Z"
        
        switch filter {
        case .today:
            let currentDate = Date()
            temp = taskList.filter {
                let specificDate = dateFormatter.date(from: $0.date.description)!
                let timeIntervalInSec = currentDate.timeIntervalSince(specificDate)
                let timeIntervalInDay = Int(timeIntervalInSec/(24*3600))
                
                //print("Today: timeIntervalInDay: \(timeIntervalInDay)")
                return timeIntervalInDay == 0
            }
        case .yesterday:
            let currentDate = Date()
            temp = taskList.filter {
                let specificDate = dateFormatter.date(from: $0.date.description)!
                let timeIntervalInSec = currentDate.timeIntervalSince(specificDate)
                let timeIntervalInDay = Int(timeIntervalInSec/(24*3600))
                
                //print("Yesterday: timeIntervalInDay: \(timeIntervalInDay)")
                return timeIntervalInDay == 1
            }
        case .last_week:
            let currentDate = Date()
            temp = taskList.filter {
                let specificDate = dateFormatter.date(from: $0.date.description)!
                let timeIntervalInSec = currentDate.timeIntervalSince(specificDate)
                let timeIntervalInDay = Int(timeIntervalInSec/(24*3600))
                
                //print("Last_Week: timeIntervalInDay: \(timeIntervalInDay)")
                return (1 <= timeIntervalInDay && timeIntervalInDay <= 7)
            }
        case .last_month:
            let currentDate = Date()
            temp = taskList.filter {
                let specificDate = dateFormatter.date(from: $0.date.description)!
                let timeIntervalInSec = currentDate.timeIntervalSince(specificDate)
                let timeIntervalInDay = Int(timeIntervalInSec/(24*3600))
                
                //print("Last_Month: timeIntervalInDay: \(timeIntervalInDay)")
                return (1 <= timeIntervalInDay && timeIntervalInDay <= 30)
            }
        }
        filteredTaskList = temp
    }
}


