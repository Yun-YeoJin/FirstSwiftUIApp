//
//  ContentView.swift
//  FirstSwiftUIApp
//
//  Created by 윤여진 on 2022/12/19.
//

import SwiftUI

/*
 UIKit = UserInterfaceKit
 WatchKit
 AppKit = MacOS App
 */

struct ContentView: View {
    var body: some View {
        PlayerView(episode: Episode.list[0])
    }
}

//미리보기를 구성해주는 뷰
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
