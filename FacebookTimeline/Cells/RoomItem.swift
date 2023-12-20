//
//  RoomItem.swift
//  FacebookTimeline
//
//  Created by A'zamjon Abdumuxtorov on 17/12/23.
//

import SwiftUI

struct RoomItem: View {
    var isOnline = false
    var body: some View {
        ZStack(alignment:.bottomTrailing){
            Image("profile").resizable()
                .frame(width: 60,height: 60)
                .cornerRadius(30)
            if isOnline{
            ZStack{
                    Circle().frame(width: 24,height: 24)
                        .foregroundColor(.white)
                    Circle().frame(width: 20,height: 20)
                        .foregroundColor(.green)
                }
            }
        }
    }
}

#Preview {
    RoomItem()
}
