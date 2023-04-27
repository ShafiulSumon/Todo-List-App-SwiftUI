//
//  TaskData.swift
//  NotePad-SwiftUI
//
//  Created by ShafiulAlam-00058 on 3/24/23.
//

import SwiftUI

struct TaskData: Hashable, Identifiable {
    var id = UUID()
    var task: String
    var date: Date
}
