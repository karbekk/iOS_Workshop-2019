//
//  ViewController.swift
//  Audio
//
//  Created by APPLE-13 on 26/02/19.
//  Copyright © 2019 APPLE-13. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer = AVAudioPlayer()
    
    
    @IBAction func play(_ sender: UIButton) {
        player.play()
    }
    
    
    @IBAction func pause(_ sender: UIButton) {
        player.pause()
    }
    
    
    
    @IBAction func replay(_ sender: UIButton) {
        player.stop()
        player.play()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do {
            let AudioPath = Bundle.main.path(forResource: "Instument", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: AudioPath!) as URL )
        }
        catch {
            
        }
    }


}

