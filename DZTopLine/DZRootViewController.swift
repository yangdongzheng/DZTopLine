//
//  DZRootViewController.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

class DZRootViewController: UITabBarController {
    
    override func loadView() {
        super.loadView()
        
        addChildViewController(DZHomeViewController(), title: "礼物说", imageName: "tabbar_home")
        addChildViewController(DZMovieViewController(), title: "热门", imageName: "tabbar_gift")
        addChildViewController(DZFollowViewController(), title: "分类", imageName: "tabbar_category")
        addChildViewController(DZMeViewController(), title: "我的", imageName: "tabbar_me")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    fileprivate func addChildViewController(_ controller: UIViewController, title: String, imageName: String) {
        controller.tabBarItem.image = UIImage(named: imageName)
        controller.tabBarItem.selectedImage = UIImage(named: imageName + "_selected")
        controller.tabBarItem.title = title;
        
        let nav = DZNavigationViewController(rootViewController: controller)
        addChildViewController(nav);
    }
}
