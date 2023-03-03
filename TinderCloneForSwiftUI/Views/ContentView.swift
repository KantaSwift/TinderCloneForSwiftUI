//
//  ContentView.swift
//  TinderCloneForSwiftUI
//
//  Created by 上條栞汰 on 2023/03/02.
//

import SwiftUI

struct ContentView: View {
    
    private var frameWidth = UIScreen.main.bounds.width
    
    @State var selectedItem = SelectedItem.tinder
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    selectedItem  = .tinder
                } label: {
                    Image(systemName: "flame.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(selectedItem == .tinder ? .red : .gray)
                }
                .frame(width: frameWidth / 4 - 20)
                .padding(.leading, 30)
                Button {
                    selectedItem  = .good
                } label: {
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(selectedItem == .good ? .yellow : .gray)
                }
                .frame(width: frameWidth / 4)
                Button {
                    selectedItem = .comment
                } label: {
                    Image(systemName: "bubble.left.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(selectedItem == .comment ? .orange : .gray)
                }
                .frame(width: frameWidth / 4)
                Button {
                    selectedItem = .profile
                } label: {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(selectedItem == .profile ? .pink : .gray)
                }
                .frame(width: frameWidth / 4 - 20)
                .padding(.trailing, 30)
            }
            .padding()
            .frame(width: frameWidth)
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(.blue)
            HStack(spacing: 20) {
                BottomButtonView(imageName: "reload", imageSize: 20, backgroundSize: 50)
                BottomButtonView(imageName: "incorrect", imageSize: 25, backgroundSize: 60)
                BottomButtonView(imageName: "star", imageSize: 20, backgroundSize: 50)
                BottomButtonView(imageName: "good", imageSize: 25, backgroundSize: 60)
                BottomButtonView(imageName: "boost", imageSize: 20, backgroundSize: 50)
            }
            .padding()
        }
        .padding()
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
