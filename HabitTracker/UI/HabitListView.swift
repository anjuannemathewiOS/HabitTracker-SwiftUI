//
//  HabitListView.swift
//  HabitTracker
//
//  Created by Anju Anne Mathew on 14/05/2025.
//

import SwiftUI

struct HabitListView: View {
    @StateObject var viewModel = HabitViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.habits) { habit in
                    HStack {
                        Text(habit.name)
                        Spacer()
                        Text("\(habit.streak) days streak")
                            .foregroundColor(habit.streak > 0 ? .green : .gray)
                    }
                    .onTapGesture {
                        viewModel.toggleHabitCompletion(for: habit)
                    }
                }
            }
            .navigationTitle("Habit Tracker")
            .onAppear {
                viewModel.loadHabits()
            }
        }
    }
}
