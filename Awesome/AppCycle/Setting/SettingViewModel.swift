//
//  SettingViewModel.swift
//  Awesome
//
//  Created by Diab on 21/01/2024.
//

import Foundation
import SwiftUI

class SettingViewModel:ObservableObject{

    static var shared = SettingViewModel()
    
    var aboutData:[aboutModel] = [.init(id:0,icon:"iphone.gen2",name: "Application", color: .blue, value: "Awesome"),
                                  .init(id:1,icon:"info.circle",name: "Compatability", color: .red, value: "iOS"),
                                  .init(id:2,icon:"swift",name: "Technology", color: .orange, value: "Swift"),
                                  .init(id:3,icon: "gear", name: "Version", color: .purple, value: "1.0"),
                                  .init(id:4,icon: "ellipsis.curlybraces", name: "Developer", color: .mint, value: "Diab"),
                                  .init(id:5,icon: "paintpalette", name: "Designer", color: .pink, value: "El Deepo")]
    
    var appIcons : [AppIconData] = [.init(id: 0, icon: .init(.appIconBackpackPreview),iconName: "AppIcon-Backpack"),
                                    .init(id: 1, icon: .init(.appIconCameraPreview),iconName: "AppIcon-Camera"),
                                    .init(id: 2, icon: .init(.appIconCampfirePreview),iconName: "AppIcon-Campfire"),
                                    .init(id: 3, icon: .init(.appIconMagnifyingGlassPreview),iconName: "AppIcon-MagnifyingGlass"),
                                    .init(id: 4, icon: .init(.appIconMapPreview),iconName: "AppIcon-Map"),
                                    .init(id: 5, icon: .init(.appIconMushroomPreview),iconName: "AppIcon-Mushroom")]
    
    
}


struct aboutModel:Hashable,Identifiable{
    var id = 0
    var icon:String = ""
    var name:String = ""
    var color:Color = .blue
    var value:String = ""
}

struct AppIconData:Identifiable{
    var id = 0
    var icon:Image = .init(.appIconBackpackPreview)
    var iconName:String? = ""
}
