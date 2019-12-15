//
//  ViewController.swift
//  day7StopWatch
//
//  Created by Felix-ITS016 on 20/11/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var  timer = Timer()
    
    @IBAction func playButton(_ sender: Any) {
       
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(changeCount), userInfo: nil, repeats: true)
    }
    
    @IBAction func stopButton(_ sender: Any) {
        timer.invalidate()
        Label.text = "0"
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @objc func changeCount()
    {
        var count = Int (Label.text!)!
        count += 1
        Label.text = String(count)
    }
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

