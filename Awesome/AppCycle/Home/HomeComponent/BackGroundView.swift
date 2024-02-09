//
//  BackGroundView.swift
//  Awesome
//
//  Created by Diab on 16/01/2024.
//

import SwiftUI

struct BackGroundView: View {
    var body: some View {
        ZStack {
          // MARK: - 3. DEPTH
          
          Color.ColorGreenDark
            .cornerRadius(40)
            .offset(y: 12)
          
          // MARK: - 2. LIGHT
          
          Color.ColorGreenLight
            .cornerRadius(40)
            .offset(y: 3)
            .opacity(0.85)
          
          // MARK: - 1. SURFACE
          
          LinearGradient(
            colors: [
              .ColorGreenLight,
              .ColorGreenMedium],
            startPoint: .top,
            endPoint: .bottom
          )
          .cornerRadius(40)
        }    }
}

#Preview {
    BackGroundView()
        .padding()
}
