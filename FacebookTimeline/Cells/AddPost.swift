//
//  addPost.swift
//  FacebookTimeline
//
//  Created by A'zamjon Abdumuxtorov on 17/12/23.
//

import SwiftUI

struct AddPost: View {
    
    var body: some View {
        VStack{
            //header
            HStack{
                ZStack(alignment:.bottomTrailing){
                    Image("post3").resizable()
                        .frame(width: 50,height: 50)
                        .cornerRadius(25)
                }
                VStack(alignment:.leading,spacing: 5){
                    Text("IT-Park")
                    HStack{
                        Text("1d")
                        Image(systemName: "globe.asia.australia.fill").resizable()
                            .frame(width: 20,height: 20)
                    }
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            // comment
            VStack{
                Text("⁉️ IT sohasida frilansermisiz?")
                Text("")
                HStack{
                    Text("Unda oxirgi...")
                    Text("See More").foregroundColor(.secondary)
                }
            }.frame(height: 80)
                .frame(maxWidth: .infinity,alignment: .bottomLeading)
                .padding(.leading,10)
            //post image
            HStack{
                Image("profile").resizable()
                    .frame(width: UIScreen.width/2,height: UIScreen.width/2)
                Image("post3").resizable()
                    .frame(width: UIScreen.width/2,height: UIScreen.width/2)
            }
            //like number
            HStack{
                Image(systemName: "hand.thumbsup.fill")
                    .frame(width: 16,height: 16)
                    .foregroundColor(.white).padding(5)
                    .background(Color.blue)
                    .cornerRadius(20)
                Text("9")
                Spacer()
                Text("3 shares")
            }.padding(.leading,10)
                .padding(.trailing,10)
            
            // like comment share
            HStack(alignment:.center){}.frame(height: 2)
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
            HStack(alignment:.center){}.frame(height: 7)
                .frame(maxWidth: .infinity)
                .background(.gray.opacity(0.3 ))
        }
    }
}

#Preview {
    AddPost()
}
