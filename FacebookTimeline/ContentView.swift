//
//  ContentView.swift
//  FacebookTimeline
//
//  Created by A'zamjon Abdumuxtorov on 17/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                // live photo room
                VStack{
                    HStack{}.frame(height: 1).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    HStack(){
                        Image("profile").resizable()
                            .frame(width: 60,height: 60)
                            .cornerRadius(30)
                        Text("What's on your mind?")
                            .font(.system(size: 17))
                        Spacer()
                        Image(systemName: "photo.on.rectangle.angled").foregroundColor(.green)
                    }.frame(height: 70)
                        .frame(maxWidth: .infinity ,alignment:.topLeading)
                        .padding(.leading,10).padding(.trailing,10)
                    HStack{}.frame(height: 1).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    HStack{
                        Spacer()
                        HStack{
                            Image(systemName: "arrow.up.right.video.fill")
                                .foregroundColor(.red)
                            Text("Live")
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "photo.fill")
                                .foregroundColor(.green)
                            Text("Photo")
                        }
                        Spacer()
                        HStack{
                            Image(systemName: "video.fill")
                                .foregroundColor(.purple)
                            Text("Room")
                        }
                        Spacer()
                    }
                    .frame(height: 30)
                }
                //creat room
                VStack{
                    HStack{}.frame(height: 7).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing:20){
                            AddRoom()
                            RoomItem(isOnline:false)
                            RoomItem(isOnline:true)
                            RoomItem(isOnline:true)
                            RoomItem(isOnline:true)
                            RoomItem(isOnline:false)
                            RoomItem(isOnline:true)
                        }
                    }.frame(height: 70)
                        .frame(maxWidth: .infinity)
                        .padding(.leading,10)
                        .padding(.trailing,10)
                }
                //creat story
                VStack{
                    HStack{}.frame(height: 7).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            AddStory()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                            StoryItem()
                        }
                    }.padding(.leading,10)
                        .padding(.top,10)
                        .padding(.bottom,10)
                }
                //post items
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    AddPost()
                    PostItem(img_url:"post1")
                    PostUpdate()
                    PostItem(img_url:"post2")
                }
                VStack{
                    HStack{}.frame(height: 10).frame(maxWidth: .infinity)
                        .background(Color.gray.opacity(0.3))
                    AddPost()
                    PostItem(img_url:"post1")
                    PostUpdate()
                    PostItem(img_url:"post2")
                }
            }
            .navigationBarItems(
                leading:  Text("facebook")
                    .font(.title)
                    .font(.system(size: 25))
                    .foregroundColor(.blue)
                ,
                trailing: HStack{
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36,height: 36)
                        Image(systemName: "magnifyingglass")
                    }
                    ZStack{
                        Circle().fill(Color.gray.opacity(0.3))
                            .frame(width: 36,height: 36)
                        Image(systemName: "bolt.circle.fill")
                    }
                    
                })
            .navigationBarTitle("",displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}
