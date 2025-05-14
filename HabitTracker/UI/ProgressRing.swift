//
//  ProgressRing.swift
//  HabitTracker
//
//  Created by Anju Anne Mathew on 14/05/2025.
//

import SwiftUI

struct ProgressRing: View {
    var progress: CGFloat  // Between 0 and 1

    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.gray, lineWidth: 10)
                .background(Circle().foregroundColor(Color.green.opacity(0.2)))

            Circle()
                .trim(from: 0, to: progress)
                .stroke(Color.blue, lineWidth: 10)
                .rotationEffect(.degrees(-90))  // Rotate the stroke
                .animation(.easeInOut, value: progress) // Animate the progress change
        }
        .frame(width: 80, height: 80)
    }
}

