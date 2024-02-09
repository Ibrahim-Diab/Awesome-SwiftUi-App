//
//  TopSection.swift
//  Awesome
//
//  Created by Diab on 17/01/2024.
//

import SwiftUI

struct TopSection: View {
    var body: some View {
        Section{
            HStack{
                Spacer()
                Image(systemName: "laurel.leading")
                    .font(.system(size: 80, weight: .black))
                VStack (spacing:-5){
                    Text("Awesome")
                        .font(.system(size: 48, weight: .black))
                    Text("Make Your Choise")
                        .fontWeight(.medium)
                }
                Image(systemName: "laurel.trailing")
                    .font(.system(size: 80, weight: .black))
                Spacer()
            }.foregroundStyle(
                LinearGradient(colors: [.colorGreenLight,.colorGreenMedium,.colorGreenLight], startPoint: .top, endPoint: .bottom)
            ) // End Stack
            .padding(.bottom,6)
            
            VStack(spacing:10){
                Text("Where can you find \nperfect tracks?")
                    .font(.title2)
                    .fontWeight(.heavy)
                
                Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                    .font(.footnote)
                    .italic()
                
                Text("Dust off the boots! It's time for a walk.")
                    .fontWeight(.heavy)
                    .foregroundColor(.colorGreenMedium)
                
            }.multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
        } // end Section
        .listRowSeparator(.hidden)
       
    }
}

#Preview {
    TopSection()
       
}
