//
//  StoryItem.swift
//  FacebookTimeline
//
//  Created by A'zamjon Abdumuxtorov on 17/12/23.
//

import SwiftUI

struct StoryItem: View {
    var body: some View {
        ZStack{
            Image("story").resizable()
                .frame(width: 150,height: 250)
                .scaledToFit()
                .cornerRadius(15)
            VStack(alignment:.leading){
                Image("profile").resizable()
                    .frame(width: 50,height: 50)
                    .cornerRadius(25)
                    .overlay(RoundedRectangle(cornerRadius: 30).stroke(.blue,lineWidth: 5))
            Spacer()
                Text("A'zamjon").foregroundColor(.white)
                    .font(.system(size: 17))
                Text("Abdumuxtorov").foregroundColor(.white)
                    .font(.system(size: 17))
            }.padding()
        }.frame(width: 150,height: 250).cornerRadius(15)
    }
}

#Preview {
    StoryItem()
}
