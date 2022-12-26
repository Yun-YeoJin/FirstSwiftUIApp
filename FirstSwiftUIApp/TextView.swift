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
    }
}

struct ButtonView: View {
    var body: some View {
        Button {
            print("눌렸습니다.")
        } label: {
            Text("버튼이 눌렸습니다.")
        }

    }
}

struct ImageView: View {
    var body: some View {
        Image(systemName: "sun.max.fill")
    }
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
