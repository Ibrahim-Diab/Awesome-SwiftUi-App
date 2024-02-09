//
//  CustomeModifier.swift
//  Awesome
//
//  Created by Diab on 17/01/2024.
//

import SwiftUI

extension Image{
    func fitImageWithResizable() -> some View{
        self
          .resizable()
          .aspectRatio(contentMode: .fit)
    }
}


