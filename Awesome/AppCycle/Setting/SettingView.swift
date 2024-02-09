//
//  SettingView.swift
//  Awesome
//
//  Created by Diab on 17/01/2024.
//

import SwiftUI


struct SettingView: View {
    
    @StateObject var settingViewModel = SettingViewModel()
    
    
    var body: some View {
        List{
            TopSection() // End Top
            AppIconSection(viewModel: settingViewModel) // End icon Section
            
            Section(content: {
                ForEach(settingViewModel.aboutData) { item in
                    AboutSection(row:item)
                }
            }, header: {
                Text("About The App")
            }) // End Bottom Section
        }
    }
}

#Preview {
    SettingView()
}




