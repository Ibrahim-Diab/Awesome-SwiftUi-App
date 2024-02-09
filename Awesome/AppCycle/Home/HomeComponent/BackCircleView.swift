//
//  BackCircleView.swift
//  Awesome
//
//  Created by Diab on 16/01/2024.
//

import SwiftUI

struct BackCircleView: View {
    @State var  isAnimation:Bool = false
    var body: some View {
        ZStack{
            Circle()
                .fill()
                  .foregroundStyle(
                      LinearGradient(colors:
                                        [.ColorIndigoMedium,.colorSalmonLight]
                                     , startPoint: isAnimation ? .topLeading : .bottomLeading
                                     , endPoint: isAnimation ? .bottomTrailing : .topTrailing)
                  )
                  .onAppear(){
                      withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                          isAnimation.toggle()
                      }

              }

            MotionCircleView()
        }
        .frame(width: 256, height: 256)

    
    }
        
        
}

#Preview {
    BackCircleView()
}


