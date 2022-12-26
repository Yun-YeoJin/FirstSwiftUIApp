//
//  ListView.swift
//  FirstSwiftUIApp
//
//  Created by 윤여진 on 2022/12/19.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List { //10개까지 밖에 안된다.
            DatePicker(selection: .constant(Date()), label: { Text("Data")})
            Text("1위")
            Text("2위")
            Text("3위")
            Text("4위")
            Text("5위")
                .foregroundColor(.red)
                .background(.blue)
            Text("6위")
                .font(.caption)
            Text("7위")
                .font(.caption)
                .fontWeight(.medium)
                .foregroundColor(Color.blue)
            Text("8위")
            ForEach(0..<50) {
                Text("리스트셀\($0)")
            }
        }
        .listStyle(.insetGrouped)
        .font(.largeTitle)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
