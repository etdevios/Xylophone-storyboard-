//
//  AudioPlayer.swift
//  Xylophone (storyboard)
//
//  Created by Eduard Tokarev on 01.02.2023.
//

import AVFoundation

final class AudioPlayer {
    private var audioPlayer: AVAudioPlayer?
    
    func playSound(sound: String ) {
        guard let url = Bundle.main.url(
            forResource: sound,
            withExtension: "wav"
        ) else { return }
        
        do {
            audioPlayer = try AVAudioPlayer(
                contentsOf: url,
                fileTypeHint: AVFileType.mp3.rawValue
            )

            guard let player = audioPlayer else { return }
            player.play()

        } catch let error {
            print(error.localizedDescription)
        }
    }
}
