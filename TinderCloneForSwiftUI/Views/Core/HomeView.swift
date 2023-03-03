//
//  ContentView.swift
//  TinderCloneForSwiftUI
//
//  Created by 上條栞汰 on 2023/03/02.
//

import SwiftUI

struct HomeView: View {
    
    private var frameWidth = UIScreen.main.bounds.width
    
    @State var selectedItem = SelectedItem.tinder
    
    var body: some View {
        VStack {
            TopControlView()
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(.blue)
            BottomControlView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
