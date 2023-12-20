//
//  PostItem.swift
//  FacebookTimeline
//
//  Created by A'zamjon Abdumuxtorov on 17/12/23.
//

import SwiftUI

struct PostItem: View {
    var img_url = "post2"
    var body: some View {
        VStack{
            //header
            HStack{
                ZStack(alignment:.bottomTrailing){
                    Image("profile").resizable()
                        .frame(width: 50,height: 50)
                        .cornerRadius(25)
                    ZStack{
                            Circle().frame(width: 22,height: 22)
                                .foregroundColor(.white)
                            Circle().frame(width: 16,height: 16)
                                .foregroundColor(.green)
                        }
                }
                VStack(alignment:.leading,spacing: 5){
                    Text("A'zamjon")
                    HStack{
                        Text("18m")
                        Image(systemName: "globe.asia.australia.fill").resizable()
                            .frame(width: 20,height: 20)
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            //post image
            Image(img_url).resizable().scaledToFit()
            //like love comment share
            HStack(spacing:5){
                HStack(spacing:-8){
                    Image(systemName: "hand.thumbsup.fill")
                        .frame(width: 20,height: 20)
                        .foregroundColor(.white).padding(5)
                        .background(Color.blue)
                        .cornerRadius(20)
                    Image(systemName: "heart.fill")
                        .frame(width: 20,height: 20)
                        .foregroundColor(.white).padding(5)
                        .background(Color.red)
                        .cornerRadius(20)
                }
                Text("8.4K")
                Spacer()
                Text("240 comments")
                Text("77 shares")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            
            //past
            HStack(alignment:.center){}.frame(height: 1)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3 ))
            HStack{
                Spacer()
                Image(systemName: "hand.thumbsup.fill")
                Text("Like")
                Spacer()
                Image(systemName: "message.badge.filled.fill")
                Text("Comment")
                Spacer()
                Image(systemName: "arrowshape.turn.up.backward.fill")
                Text("Share")
                Spacer()
            }.frame(height: 40)
            
            HStack(alignment:.center){}.frame(height: 10)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3 ))
        }
    }
}

#Preview {
    PostItem()
}
