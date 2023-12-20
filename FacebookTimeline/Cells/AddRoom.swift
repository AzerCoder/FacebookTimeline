//
//  AddRoom.swift
//  FacebookTimeline
//
//  Created by A'zamjon Abdumuxtorov on 17/12/23.
//

import SwiftUI

struct AddRoom: View {
    var body: some View {
        HStack{
            Image(systemName: "arrow.up.right.video.fill")
                .resizable()
                .frame(width: 50,height: 30)
                .foregroundColor(.purple)
            VStack(alignment:.leading){
                Text("Create")
                Text("Room")
            }.foregroundColor(.blue)
        }.frame(width: 150,height: 60)
            .overlay(RoundedRectangle(cornerRadius: 30).stroke(.blue,lineWidth: 1))
    }
}

#Preview {
    AddRoom()
}
