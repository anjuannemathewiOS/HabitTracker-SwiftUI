//
//  Item.swift
//  HabitTracker
//
//  Created by Anju Anne Mathew on 14/05/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
