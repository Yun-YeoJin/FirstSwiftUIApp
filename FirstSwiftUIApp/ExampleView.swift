//
//  ExampleView.swift
//  FirstSwiftUIApp
//
//  Created by 윤여진 on 2022/12/19.
//

import SwiftUI

struct ExampleView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .foregroundColor(.red)
                .font(.title)
                .fontWeight(.bold)
            Text("안녕하세요")
                .foregroundColor(.blue)
                .font(.subheadline)
                .fontWeight(.ultraLight)
            Spacer()
            Circle()
                .fill(.red)
            Ellipse()
                .fill(.green)
            Image(systemName: "star.fill")
                .imageScale(.large)
                .foregroundColor(.blue)
            Text("Hello Dev.Yun")
                .font(.caption)
                .italic()
            Text("밑줄이 가능하다고?\n줄바꾸기도 가능")
                .underline()
            Text("취소선")
                .strikethrough()
            Text("줄 제한 걸기 NumberofLines")
                .lineLimit(0)
                .kerning(10)
        }
    }
}

struct ExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ExampleView()
            .previewInterfaceOrientation(.portrait)
            .previewDevice("iPhone SE (3rd generation)")
    }
}
