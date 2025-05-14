//
//  HabitViewModel.swift
//  HabitTracker
//
//  Created by Anju Anne Mathew on 14/05/2025.
//

import Foundation

class HabitViewModel: ObservableObject {
    @Published var habits: [Habit] = []
    
    // Load habits from UserDefaults or create mock list
    func loadHabits() {
        habits = [
            Habit(name: "Exercise", target: 1, streak: 3, lastCompleted: Date()),
            Habit(name: "Read", target: 1, streak: 5, lastCompleted: Date())
        ]
    }

    // Toggle habit completion
    func toggleHabitCompletion(for habit: Habit) {
        if let index = habits.firstIndex(where: { $0.id == habit.id }) {
            var updatedHabit = habits[index]
            updatedHabit.lastCompleted = Date()
            updatedHabit.streak += 1
            habits[index] = updatedHabit
        }
    }
}
