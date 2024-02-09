//
//  ExploreButton.swift
//  Awesome
//
//  Created by Diab on 17/01/2024.
//

import SwiftUI

struct ExploreButton: View {
    var viewModel: HomeViewModel
    
    var body: some View {
        Button {
            viewModel.randomImage = viewModel.images.randomElement()!
        } label: {
                        Text("Explore More")
                .foregroundStyle(Color.ColorGreenDark)
                .font(.title2)
                .font(.system(size: 20))
                .fontWeight(.heavy)
                .frame(width: 230,height: 60)
                .background(LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom))
                .clipShape(.capsule)
                .padding()
                .shadow(radius: 10)
                
        }
    }
}
