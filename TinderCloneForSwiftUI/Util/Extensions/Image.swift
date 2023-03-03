//
//  Image.swift
//  TinderCloneForSwiftUI
//
//  Created by 上條栞汰 on 2023/03/03.
//

import SwiftUI

extension Image {
    func asTopControlButtonImage() -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: 30, height: 30, alignment:  .center)
    }
}
