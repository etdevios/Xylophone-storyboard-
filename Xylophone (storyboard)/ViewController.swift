//
//  ViewController.swift
//  Xylophone (storyboard)
//
//  Created by Eduard Tokarev on 31.01.2023.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    private let audioPlayer = AudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        guard let titleSender = sender.currentTitle else { return }
        audioPlayer.playSound(soundName: titleSender)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1.0
        }
    }
}

