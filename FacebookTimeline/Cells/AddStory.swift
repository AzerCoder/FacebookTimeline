//
//  AddStory.swift
//  FacebookTimeline
//
//  Created by A'zamjon Abdumuxtorov on 17/12/23.
//

import SwiftUI

struct AddStory: View {
    var body: some View {
        VStack(){
            VStack{
                ZStack(alignment:.bottom){
                    Image("profile").resizable()
                        .frame(width: 150,height: 180)
                        .scaledToFit()                     
                    ZStack{
                        Circle().fill().frame(width: 42,height: 42)
                            .foregroundColor(.white)
                        Image(systemName: "plus.circle.fill").resizable()
                            .foregroundColor(.blue)
                            .frame(width: 35,height: 35)
                    }.padding(-22)
                }
                Spacer()
                VStack{
                    Text("Create")
                    Text("story")
                }.padding()
            }
           

        }.frame(width: 150,height: 250)
            .background(Color.gray.opacity(0.1)).cornerRadius(15)
    }
}

#Preview {
    AddStory()
}
