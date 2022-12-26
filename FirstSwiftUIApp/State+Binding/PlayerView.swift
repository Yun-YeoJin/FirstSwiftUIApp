//
//  PlayerView.swift
//  FirstSwiftUIApp
//
//  Created by 윤여진 on 2022/12/27.
//

/*
 사용자 시나리오
 플레이어 화면
 - 정보 : 제목, 이름
 - 플레이 버튼 (재생 여부에 따라 다르게 표시)
 - 현재 재생 상태표시 이미지 (재생 여부에 따라 다르게 표시)
 */

import SwiftUI

struct PlayerView: View {
    
    let episode: Episode
    @State private var isPlaying: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text(episode.title)
                .font(.largeTitle)
            Text(episode.showTitle)
                .font(.title3)
                .foregroundColor(.gray)
            PlayButton(isPlaying: $isPlaying)
            PlayingStatus(isPlaying: $isPlaying)
            //한꺼번에 바꿔주려면 Ctrl + Cmd + E
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(episode: Episode.list[0])
    }
}

//MARK: PlayButton
struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button {
            self.isPlaying.toggle()
        } label: {
            Image(systemName: isPlaying ? "pause.circle" : "play.circle")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 80)
                .foregroundColor(.primary)
        }
    }
}

//MARK: PlayingStatus
struct PlayingStatus: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        Image(systemName: isPlaying ? "hare.fill" : "tortoise.fill")
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 60, height: 60)
    }
}
