//
//  TopControlView.swift
//  TinderCloneForSwiftUI
//
//  Created by 上條栞汰 on 2023/03/03.
//

import SwiftUI

struct TopControlView: View {
    
    @State private var selectedItem = SelectedItem.tinder
    private var frameWidth = UIScreen.main.bounds.width
    
    var body: some View {
        HStack {
            Button {
                selectedItem  = .tinder
            } label: {
                Image(systemName: "flame.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .tinder ? .red : .gray)
            }
            .frame(width: frameWidth / 4 - 20)
            .padding(.leading, 30)
            Button {
                selectedItem  = .good
            } label: {
                Image(systemName: "suit.diamond.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .good ? .yellow : .gray)
            }
            .frame(width: frameWidth / 4)
            Button {
                selectedItem = .comment
            } label: {
                Image(systemName: "bubble.left.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .comment ? .orange : .gray)
            }
            .frame(width: frameWidth / 4)
            Button {
                selectedItem = .profile
            } label: {
                Image(systemName: "person.crop.circle.fill")
                    .asTopControlButtonImage()
                    .foregroundColor(selectedItem == .profile ? .pink : .gray)
            }
            .frame(width: frameWidth / 4 - 20)
            .padding(.trailing, 30)
        }
        .padding()
        .frame(width: frameWidth)
    }
}

struct TopControlView_Previews: PreviewProvider {
    static var previews: some View {
        TopControlView()
    }
}



