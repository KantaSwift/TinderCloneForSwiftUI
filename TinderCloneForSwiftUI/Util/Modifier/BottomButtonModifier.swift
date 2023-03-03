//
//  BottomButtonModifier.swift
//  TinderCloneForSwiftUI
//
//  Created by 上條栞汰 on 2023/03/03.
//

import SwiftUI

struct BottomButtonModifier: ViewModifier {
    var size: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: size, height: size)
            .cornerRadius(size)
            .shadow(radius: 10)
    }
}

extension View {
    func asRoundShadow(size: CGFloat) -> some View {
        modifier(BottomButtonModifier(size: size))
    }
}
