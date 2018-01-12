//
//  ViewController.swift
//  ScreenRotationDemo
//
//  Created by swordjoy on 2018/1/12.
//  Copyright © 2018年 swordjoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 2 如果在Target中配置了,优先target
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeLeft
    }
    
//    override var shouldAutorotate: Bool {
//        return true
//    }
    
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .landscapeRight
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIDeviceOrientation 和 UIInterfaceOrientation对应
        //
    }
        
        // 获取界面方向
//        let statusBarOrientation = UIApplication.shared.statusBarOrientation
//        
//        switch statusBarOrientation {
//        case .landscapeLeft:
//            print("statusBarOrientation: left")
//        case .landscapeRight:
//            print("statusBarOrientation: right")
//        case .portrait:
//            print("statusBarOrientation: portrait")
//        case .portraitUpsideDown:
//            print("statusBarOrientation: portraitUpsideDown")
//        default:
//            break
//        }
        
        // 1.默认是true
//        UIInterfaceOrientation
//        print(self.shouldAutorotate)
        //        NSNotification.Name.UIApplicationWillChangeStatusBarOrientation
        //        NSNotification.Name.UIApplicationDidChangeStatusBarOrientation
 
        // 手机锁定竖屏后，UIDeviceOrientationDidChangeNotification通知就失效了。
        
//        print(UIDevice.current.isGeneratingDeviceOrientationNotifications)
        // 没有生成通知
//        if !UIDevice.current.isGeneratingDeviceOrientationNotifications {
//            // 生成通知
//            UIDevice.current.beginGeneratingDeviceOrientationNotifications()
//        }
//
//
//        // UIInterfaceOrientationMask
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(handleDeviceOrientationChange(notification:)),
//                                               name: NSNotification.Name.UIApplicationWillChangeStatusBarOrientation,
//                                               object: nil)
//        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
//
//        1、屏幕旋转时，建议监听UIApplicationDidChangeStatusBarOrientationNotification#####
        //我们真正要处理的是页面方向发生旋转UI的变化。而在设备的物理方向发生旋转的时候，如果此时当前控制器的页面并没有旋转，我们这时改变UI布局，可能就发生问题了。
        
//    }
    
    
    @objc private func handleDeviceOrientationChange(notification: Notification) {
        // 获取设备方向
        let orientation = UIDevice.current.orientation
        switch orientation {
        case .landscapeLeft:
            print("landscapeLeft")
        case .landscapeRight:
            // iOS8之后
            // 横屏后UIScreen.main.bounds.width等于竖屏高度
            print(UIScreen.main.bounds.width)
            print("landscapeRight")
        case .portrait:
            print("portrait")
        case .portraitUpsideDown:
            print("portraitUpsideDown")
        case .faceDown:
            print("faceDown")
        case .faceUp:
            print("faceUp")
        case .unknown:
            print("unknown")
        
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let orientation = UIInterfaceOrientation.landscapeLeft
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
        UIDevice.current.endGeneratingDeviceOrientationNotifications()
    }

}

//1、模态弹出ViewController情况下 强制横屏的设置
//    //QSShow3Controller.m
//    - (BOOL)shouldAutorotate{
//        return NO;
//        }
//
//        - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
//            return UIInterfaceOrientationMaskLandscapeRight;
//            }
//
//            - (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//                return UIInterfaceOrientationLandscapeRight;
//}
//
////模态弹出
//QSShow3Controller *vc = [[QSShow3Controller alloc]init];
//[self presentViewController:vc animated:YES completion:nil];

//2、push推入ViewController情况下 强制横屏的设置
////QSShow4Controller.m
//-(void)viewWillAppear:(BOOL)animated{
//
//    [super viewWillAppear:animated];
//    [self setInterfaceOrientation:UIInterfaceOrientationLandscapeRight];
//    }
//
//    //强制转屏（这个方法最好放在BaseVController中）
//    - (void)setInterfaceOrientation:(UIInterfaceOrientation)orientation{
//
//        if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//            SEL selector  = NSSelectorFromString(@"setOrientation:");
//            NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
//            [invocation setSelector:selector];
//            [invocation setTarget:[UIDevice currentDevice]];
//            // 从2开始是因为前两个参数已经被selector和target占用
//            [invocation setArgument:&orientation atIndex:2];
//            [invocation invoke];
//        }
//        }
//
//        //必须返回YES
//        - (BOOL)shouldAutorotate{
//            return YES;
//            }
//
//            - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
//                return UIInterfaceOrientationMaskLandscapeRight;
//}
//
////Push推入
//QSShow4Controller *vc = [[QSShow4Controller alloc]init];
//[self.navigationController pushViewController:vc animated:YES];


//设置设置状态栏竖屏
//[[UIApplication sharedApplication]setStatusBarOrientation:UIInterfaceOrientationPortrait];

///#define SCREEN_MIN MIN(SCREEN_HEIGHT,SCREEN_WIDTH)
//#define SCREEN_MAX MAX(SCREEN_HEIGHT,SCREEN_WIDTH)

//-  (NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window  {
//    return UIInterfaceOrientationMaskPortrait;
//}


// 父控制器

// 然后子控制器需要shouldAutorotate返回false

// NAV 子控制器

//- (BOOL)shouldAutorotate{
//
//    return [self.viewControllers.lastObjectshouldAutorotate];
//
//    }
//
//    - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
//
//        return [self.viewControllers.lastObjectsupportedInterfaceOrientations];
//
//}

// TabbarController控制器

//- (BOOL)shouldAutorotate{
//
//    returnself.selectedViewController.shouldAutorotate;
//
//    }
//
//    - (UIInterfaceOrientationMask)supportedInterfaceOrientations{
//
//        return [self.selectedViewControllersupportedInterfaceOrientations];
//
//}


