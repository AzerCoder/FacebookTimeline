//
//  PostUpdate.swift
//  FacebookTimeline
//
//  Created by A'zamjon Abdumuxtorov on 17/12/23.
//

import SwiftUI
extension UIScreen{
    static var width = UIScreen.main.bounds.size.width
}
struct PostUpdate: View {
    var body: some View {
        VStack{
            //header
            HStack{
                ZStack(alignment:.bottomTrailing){
                    Image("profile").resizable()
                        .frame(width: 50,height: 50)
                        .cornerRadius(25)
                }
                VStack(alignment:.leading,spacing: 5){
                    Text("A'zamjon")
                    HStack{
                        Text("34m")
                        Image(systemName: "globe.asia.australia.fill").resizable()
                            .frame(width: 20,height: 20)
                    }
                }
                Text("update this profile picture")
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.leading,10).padding(.trailing,10).padding(.top,10)
            //post image
            Image("profile").resizable()
                .frame(width: UIScreen.width-20,height: UIScreen.width-20)
                .cornerRadius(UIScreen.width/2)
                .overlay(RoundedRectangle(cornerRadius: UIScreen.width/2).stroke(.gray,lineWidth: 5))
            
            //like number
            HStack{
                Image(systemName: "hand.thumbsup.fill")
                    .frame(width: 16,height: 16)
                    .foregroundColor(.white).padding(5)
                    .background(Color.blue)
                    .cornerRadius(20)
                Text("9")
                Spacer()
            }.padding(.leading,10)
            
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
    PostUpdate()
}
