//
//  FourVC.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/15.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class FourVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        driveScreen(to: .portrait)
        isAllowAutorotate = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        isAllowAutorotate = true
    }

    @IBAction func fourAction(_ sender: UIButton) {
        let alertController = UIAlertController(title: "提示", message: "界面旋转已关闭", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        
        let action = UIAlertAction(title: "知道了", style: .default, handler: nil)
        alertController.addAction(action)
        
        driveScreen(to: .landscapeLeft)
    }
    
    func driveScreen(to direction: UIInterfaceOrientation) {
        UIDevice.current.setValue(direction.rawValue, forKey: "orientation")
    }

}
