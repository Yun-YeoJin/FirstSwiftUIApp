//
//  Episode.swift
//  FirstSwiftUIApp
//
//  Created by 윤여진 on 2022/12/27.
//

import Foundation

struct Episode {
    let title: String
    let showTitle: String
    let duration: TimeInterval
}

extension Episode {
    static let list: [Episode] = [
        Episode(title: "SwiftUI Funny", showTitle: "Dev.Yun", duration: 300),
        Episode(title: "iOS also Funny", showTitle: "Developer", duration: 500)
    ]
}
