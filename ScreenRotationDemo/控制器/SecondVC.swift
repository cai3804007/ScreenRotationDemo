//
//  SecondVC.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/12.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class SecondVC: BaseVC {
    
    /* 模态切换竖->横使用 */
    
    //    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
    //        return .landscapeLeft
    //    }
    //
    //    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
    //        return .landscapeLeft
    //    }
    
    /* 模态切换横->竖使用 */
    
    //    override var shouldAutorotate: Bool {
    //        return true
    //    }
    
    //    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
    //        return .portrait
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        /* push后使用跳转方向 */
        driveScreen(to: .portrait)
    }

    // 点击无用,因为被关闭了
    @IBAction func leftAction(_ sender: UIButton) {
        
        let alertController = UIAlertController(title: "提示", message: "界面旋转已关闭", preferredStyle: .alert)
        self.present(alertController, animated: true, completion: nil)
        
        let action = UIAlertAction(title: "知道了", style: .default, handler: nil)
        alertController.addAction(action)
        
        let orientation = UIInterfaceOrientation.landscapeRight
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
    
}
