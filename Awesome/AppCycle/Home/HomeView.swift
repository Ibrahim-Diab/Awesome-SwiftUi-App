//
//  ContentView.swift
//  Awesome
//
//  Created by Diab on 16/01/2024.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    
    var body: some View {
            ZStack{
                BackGroundView()
                ZStack{
                    VStack{
                        CardViewHeader(homeViewModel: homeViewModel)
                            .padding()
                        ZStack{
                            BackCircleView()
                                .offset(x:-10)
                            Image(homeViewModel.randomImage)
                                .fitImageWithResizable()
                        } // End Z Stack
                        ExploreButton(viewModel: homeViewModel)

                    } // End V Stack
                   
                }
            }
        
            .frame(width: 330, height: 570)
            .sheet(isPresented: $homeViewModel.isPresentSheet){
                SettingView()
                    .presentationDetents([.medium,.large])
                    .presentationDragIndicator(.visible)
                    .presentationCornerRadius(20)
            }
    }
}

#Preview {
    HomeView()
}







