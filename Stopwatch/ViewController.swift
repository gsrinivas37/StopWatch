//
//  ViewController.swift
//  Stopwatch
//
//  Created by Gudla Srinivas on 10/17/14.
//  Copyright (c) 2014 sgudla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0
    var isStarted = false
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func onPauseButton(sender: AnyObject) {
        isStarted = false
    }
    
    @IBAction func onPlayButton(sender: AnyObject) {
        isStarted = true
    }
    
    @IBAction func onCancelButton(sender: AnyObject) {
        isStarted = false
        time = 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
    }
    
    func result() {
        var hours = 0
        var mins = 0
        var secs = 0
        
        if(isStarted){
            time++
        }
        
        var time2 = time
        
        if(time2>=(60*60)){
            hours = time2/(60*60)
            time2 = time2 % (60*60)
        }
        
        if(time2>=60){
            mins = time2/60
            time2 = time2 % 60
        }
        
        secs = time2
        
        timerLabel.text = "\(hours):\(mins):\(secs)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

