//
//  FirstVC.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/12.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class FirstVC: BaseVC {

    @IBOutlet weak var currentDirectionLabel: UILabel!
    
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
        currentDirectionLabel.text = "protrait"
        driveScreen(to: .portrait)
    }
    
    // 这里界面left
    @IBAction func leftAction(_ sender: UIButton) {
        currentDirectionLabel.text = "left"
        driveScreen(to: .landscapeRight)
    }
    
    // 这里界面right
    @IBAction func rightAction(_ sender: UIButton) {
        currentDirectionLabel.text = "right"
        driveScreen(to: .landscapeLeft)
    }
    
    private func driveScreen(to direction: UIInterfaceOrientation) {
        UIDevice.current.setValue(direction.rawValue, forKey: "orientation")
    }
    
}


extension FirstVC {
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue) {
        
    }
}
