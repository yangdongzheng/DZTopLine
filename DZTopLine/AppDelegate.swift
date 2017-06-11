//
//  AppDelegate.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        setupNavigationBar()
        buildWindow()
        
        return true
    }
    
    fileprivate func setupNavigationBar() {
        // 设置全局nav与tab色值
        UINavigationBar.appearance().tintColor = UIColor(red: 255.0/255.0, green: 2.0/255.0, blue: 51.0/255, alpha: 1.0)
        UITabBar.appearance().tintColor = UIColor(red: 255.0/255.0, green: 2.0/255.0, blue: 51.0/255, alpha: 1.0)
    }
    
    fileprivate func buildWindow() {
        // 创建窗口
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = DZRootViewController()
        window?.makeKeyAndVisible()
    }
}

