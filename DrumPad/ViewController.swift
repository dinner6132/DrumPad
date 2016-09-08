//
//  ViewController.swift
//  DrumPad
//
//  Created by 家彥 陳 on 2016/8/12.
//  Copyright © 2016年 Chen-Chia-Yen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var highTomButton: UIButton!
    @IBOutlet weak var hihatButton: UIButton!
    @IBOutlet weak var crashButton: UIButton!
    @IBOutlet weak var snareButton: UIButton!
    @IBOutlet weak var bassDrumButton: UIButton!
    @IBOutlet weak var musicControlButton: UIButton!
    
    var musicPlayer: AVAudioPlayer?
    var BassDrumPlayer: AVAudioPlayer?
    var SnarePlayer: AVAudioPlayer?
    var CrashPlayer: AVAudioPlayer?
    var HihatPlayer: AVAudioPlayer?
    var HighTomPlayer: AVAudioPlayer?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let path = NSBundle.mainBundle().pathForResource("Radicalo - I will kill you all", ofType: "mp3"){
            if let file = NSFileManager.defaultManager().contentsAtPath(path){
                do{
                    try musicPlayer = AVAudioPlayer(data: file)
                }catch{
                    print("music play initialize failed")
                }
            }else{
                print("load file failed")
            }
        }else{
            print("file not exist")
        }
        
        if let path = NSBundle.mainBundle().pathForResource("BassDrum", ofType: "wav"){
            if let file = NSFileManager.defaultManager().contentsAtPath(path){
                do{
                    try BassDrumPlayer = AVAudioPlayer(data: file)
                }catch{
                    print("music play initialize failed")
                }
            }else{
                print("load file failed")
            }
        }else{
            print("file not exist")
        }
        
        if let path = NSBundle.mainBundle().pathForResource("Snare", ofType: "wav"){
            if let file = NSFileManager.defaultManager().contentsAtPath(path){
                do{
                    try SnarePlayer = AVAudioPlayer(data: file)
                }catch{
                    print("music play initialize failed")
                }
            }else{
                print("load file failed")
            }
        }else{
            print("file not exist")
        }
        
        if let path = NSBundle.mainBundle().pathForResource("Crash", ofType: "wav"){
            if let file = NSFileManager.defaultManager().contentsAtPath(path){
                do{
                    try CrashPlayer = AVAudioPlayer(data: file)
                }catch{
                    print("music play initialize failed")
                }
            }else{
                print("load file failed")
            }
        }else{
            print("file not exist")
        }
        
        if let path = NSBundle.mainBundle().pathForResource("HiHatsClose", ofType: "wav"){
            if let file = NSFileManager.defaultManager().contentsAtPath(path){
                do{
                    try HihatPlayer = AVAudioPlayer(data: file)
                }catch{
                    print("music play initialize failed")
                }
            }else{
                print("load file failed")
            }
        }else{
            print("file not exist")
        }
        
        if let path = NSBundle.mainBundle().pathForResource("HighTom", ofType: "wav"){
            if let file = NSFileManager.defaultManager().contentsAtPath(path){
                do{
                    try HighTomPlayer = AVAudioPlayer(data: file)
                }catch{
                    print("music play initialize failed")
                }
            }else{
                print("load file failed")
            }
        }else{
            print("file not exist")
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //隱藏StatusBar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.All
    }
    
    @IBAction func playBassDrum(sender: AnyObject) {
        if let player = BassDrumPlayer{
            player.currentTime = 0
            player.play()
        }
    }
    
    @IBAction func playSnare(sender: AnyObject) {
        if let player = SnarePlayer{
            player.currentTime = 0
            player.play()
        }
    }
    
    @IBAction func playCrash(sender: AnyObject) {
        if let player = CrashPlayer{
            player.currentTime = 0
            player.play()
        }
    }
    
    @IBAction func playHihat(sender: AnyObject) {
        if let player = HihatPlayer{
            player.currentTime = 0
            player.play()
        }
    }
    
    @IBAction func playHighTom(sender: AnyObject) {
        if let player = HighTomPlayer{
            player.currentTime = 0
            player.play()
        }
    }
    
    
    @IBAction func musicControlButtonHasBeenClicked(sender: UIButton) {
        if let player = musicPlayer{
            if player.playing{
                player.stop()
                musicControlButton.setImage(UIImage(named: "play"), forState: .Normal)
            }else{
                player.currentTime = 0
                player.play()
                musicControlButton.setImage(UIImage(named: "stop"), forState: .Normal)
            }
        }
    }
    

}

