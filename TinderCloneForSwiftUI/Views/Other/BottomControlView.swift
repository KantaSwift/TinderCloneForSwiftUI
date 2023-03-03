//
//  BottomControlView.swift
//  TinderCloneForSwiftUI
//
//  Created by 上條栞汰 on 2023/03/03.
//

import SwiftUI

struct BottomControlView: View {
    var body: some View {
        HStack(spacing: 20) {
            BottomButtonView(imageName: "reload", imageSize: 20, backgroundSize: 50)
            BottomButtonView(imageName: "incorrect", imageSize: 25, backgroundSize: 60)
            BottomButtonView(imageName: "star", imageSize: 20, backgroundSize: 50)
            BottomButtonView(imageName: "good", imageSize: 25, backgroundSize: 60)
            BottomButtonView(imageName: "boost", imageSize: 20, backgroundSize: 50)
        }
        .padding()
    }
}

struct BottomControlView_Previews: PreviewProvider {
    static var previews: some View {
        BottomControlView()
    }
}
