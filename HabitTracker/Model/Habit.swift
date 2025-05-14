//
//  Habit.swift
//  HabitTracker
//
//  Created by Anju Anne Mathew on 14/05/2025.
//

import Foundation

struct Habit: Identifiable, Codable {
    var id = UUID()
    var name: String
    var target: Int  // How many times per day
    var streak: Int  // Consecutive days the habit was performed
    var lastCompleted: Date?
}
