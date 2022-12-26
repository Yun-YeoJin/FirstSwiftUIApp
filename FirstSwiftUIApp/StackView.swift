//
//  StackView.swift
//  FirstSwiftUIApp
//
//  Created by 윤여진 on 2022/12/27.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack {
            VStack {
                ImageView()
                ButtonView()
                TextView()
            }
            Spacer()
            HStack {
                ImageView()
                ButtonView()
                TextView()
            }
            Spacer()
            ZStack {
                ImageView()
                ButtonView()
                TextView()
            }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
