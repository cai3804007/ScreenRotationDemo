//
//  ThreeVC.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/15.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class ThreeVC: UIViewController {

    @IBOutlet weak var directionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func portraitAction(_ sender: UIButton) {
        directionLabel.text = "protrait"
        driveScreen(to: .portrait)
    }
    
    @IBAction func leftAction(_ sender: UIButton) {
        directionLabel.text = "left"
        driveScreen(to: .landscapeRight)
    }
    
    
    @IBAction func rightAction(_ sender: UIButton) {
        directionLabel.text = "right"
        driveScreen(to: .landscapeLeft)
    }
    
    private func driveScreen(to direction: UIInterfaceOrientation) {
        UIDevice.current.setValue(direction.rawValue, forKey: "orientation")
    }
}
