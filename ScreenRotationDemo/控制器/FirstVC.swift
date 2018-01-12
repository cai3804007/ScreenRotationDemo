//
//  FirstVC.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/12.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class FirstVC: BaseVC {

    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return [.portrait, .landscapeLeft, .landscapeRight]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func protraitAction(_ sender: UIButton) {
        let orientation = UIInterfaceOrientation.portrait
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
    
    // 这里界面left
    @IBAction func leftAction(_ sender: UIButton) {
        let orientation = UIInterfaceOrientation.landscapeRight
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
    
    // 这里界面right
    @IBAction func rightAction(_ sender: UIButton) {
        let orientation = UIInterfaceOrientation.landscapeLeft
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
    
}


extension FirstVC {
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        
    }
}
