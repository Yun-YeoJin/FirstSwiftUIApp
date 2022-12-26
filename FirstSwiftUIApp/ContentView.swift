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
        VStack {
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundColor(Color.red)
            Text("안녕하세요!")
        }
        .padding()
        .border(.red)
        .padding()
        .border(.green)
        //.frame(width: 400, height: 700)
        .frame(maxWidth: .infinity ,maxHeight: .infinity)
    }
}

//미리보기를 구성해주는 뷰
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
