//
//  BottomButtonView.swift
//  TinderCloneForSwiftUI
//
//  Created by 上條栞汰 on 2023/03/03.
//

import SwiftUI

struct BottomButtonView: View {
    
    var imageName: String
    var imageSize: CGFloat
    var backgroundSize: CGFloat
    
    var body: some View {
        ZStack {
            Color.white
                .asRoundShadow(size: backgroundSize)
            Button {
                // action
            } label: {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageSize, height: imageSize, alignment: .center)
            }
        }
    }
}


