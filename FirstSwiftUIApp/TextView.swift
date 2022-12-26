//
//  TextView.swift
//  FirstSwiftUIApp
//
//  Created by 윤여진 on 2022/12/26.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("SwiftUI")
            .font(.system(size: 40, weight: .bold, design: .default))
    }
}

struct ButtonView: View {
    var body: some View {
        Button {
            print("눌렸습니다.")
        } label: {
            Text("눌러주세요.")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
        }
        .padding()
        .frame(height: 100)
        .background(.yellow)
        .cornerRadius(20)
    }
}
//modifier 순서가 영향을 줄 수도 있다.
struct ImageView: View {
    var body: some View {
        Image(systemName: "sun.max.fill")
            .renderingMode(.original) //MultiColor가 yellow
            .resizable()
            .aspectRatio(contentMode: .fit)
    }//Image -> Image -> View로 반환
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
