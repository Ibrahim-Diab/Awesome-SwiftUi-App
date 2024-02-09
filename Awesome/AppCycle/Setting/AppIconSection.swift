//
//  AppIconSection.swift
//  Awesome
//
//  Created by Diab on 21/01/2024.
//

import SwiftUI

struct AppIconSection: View {
    var viewModel = SettingViewModel()
    var body: some View {
        Section {
            ScrollView(.horizontal){
                LazyHGrid(rows: [GridItem(.flexible(minimum: 100, maximum: 100))], content: {
                    
                    
                    ForEach(viewModel.appIcons) { item in
                        item.icon
                            .fitImageWithResizable()
                            .frame(width: 80, height: 80)
                            .cornerRadius(5)
                            .onTapGesture {
                                print(item.icon)
                                UIApplication.shared.setAlternateIconName(item.iconName ?? "") { error in
                                    if error != nil{
                                        print(error?.localizedDescription)
                                    }else {
                                        print("successful pressed")
                                    }
                                }
                            }
                    }
                    
                })
            }.scrollIndicators(.hidden)
            HStack{
                Spacer()
                Text("Choose Your Favourite App icon from collection")
                    .foregroundStyle(.gray)
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                Spacer()
            }
        } header: {
            Text("Choose App icon")
        }
        .listRowSeparator(.hidden)
    }
}

#Preview {
    AppIconSection(viewModel: SettingViewModel())
}
