//
//  SecondVC.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/12.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class SecondVC: BaseVC {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // 点击无用,因为被关闭了
    @IBAction func leftAction(_ sender: UIButton) {
        let orientation = UIInterfaceOrientation.landscapeRight
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
    
}
