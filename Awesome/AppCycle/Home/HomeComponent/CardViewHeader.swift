//
//  CardViewHeader.swift
//  Awesome
//
//  Created by Diab on 17/01/2024.
//

import SwiftUI



struct CardViewHeader: View {
    
    var homeViewModel:HomeViewModel?
    
    var body: some View {
        ZStack{
            VStack{
                HStack(spacing:20){
                    Text("Awesome")
                        .font(.system(size: 40))
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.ColorGrayLight,.ColorGrayMedium], startPoint: .top, endPoint: .bottom)
                        )
                        // ---
                    ZStack{
                        Circle()
                            .foregroundStyle(.colorGrayLight)
                        Circle()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(.white)
                            .overlay(
                                          Image(systemName: "figure.hiking") // Replace with your image name
                                              .resizable()
                                              .aspectRatio(contentMode: .fit)
                                              .frame(width: 50, height: 50)
                                              .foregroundColor(.black)
                                      )
                            .onTapGesture {
                                homeViewModel?.isPresentSheet.toggle()
                            }
                    }  .frame(width: 70,height: 70)
                    
                    
                } //End  Hstack
                Text("Fun And Enjoyable outdoor activity for friends and families")
                    .italic()
                    .foregroundStyle(
                        LinearGradient(colors: [.ColorGrayLight,.ColorGrayMedium],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing)
                    )
                
            } // End VStack
        }
    }
    
}

#Preview {
    CardViewHeader()
}


