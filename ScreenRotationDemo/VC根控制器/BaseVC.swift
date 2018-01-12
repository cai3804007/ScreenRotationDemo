//
//  BaseVC.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/12.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
