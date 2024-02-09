//
//  AboutSection.swift
//  Awesome
//
//  Created by Diab on 21/01/2024.
//

import SwiftUI

struct AboutSection: View {
    var row = aboutModel()
    var body: some View {
        
        LabeledContent {
            Text(row.value)
                .fontWeight(.bold)
                .foregroundStyle(.black)
                
        } label: {
            HStack{
                ZStack{
                    RoundedRectangle(cornerSize: .zero)
                        .foregroundStyle(row.color)
                        .frame(width: 30, height: 35)
                        .overlay {
                            Image(systemName: row.icon)
                                .fitImageWithResizable()
                                .padding(EdgeInsets(top: 5, leading: 5, bottom:5, trailing: 5))
                                .foregroundStyle(.white)
                            
                        }
                        .cornerRadius(8)
                }
                Text(row.name)
                    .font(.system(size: 16))
                
            }
            
        }
    }
}
