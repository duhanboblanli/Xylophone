//
//  ViewController.swift
//  Xylophone
//
//  Created by Duhan Boblanlı on 29.10.2022.
//

import UIKit
import AVFoundation //Audio Visual Foundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
   
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
        // DispatchQueue: Uygulamanızın ana iş parçacığında veya bir arka plan iş parçacığında görevlerin seri veya eşzamanlı olarak yürütülmesini yöneten bir nesne.
        
        // asyncAfter: Belirtilen öznitelikleri kullanarak yürütme için bir blok zamanlar ve hemen geri döner.
        // asenkron --> zaman uyumsuz çalışma gerçekleştirilir --> delay
    }
    
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!) //try! try catch kısaltması
        player?.play()
        
    }
    
    


    

}
