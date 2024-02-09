//
//  HomeViewModel.swift
//  Awesome
//
//  Created by Diab on 17/01/2024.
//

import Foundation


class HomeViewModel : ObservableObject{
    
     var  images = ["image-1","image-2","image-3","image-4","image-5"]
    @Published var randomImage = "image-1"
    @Published var isPresentSheet:Bool = false
    
    
}
