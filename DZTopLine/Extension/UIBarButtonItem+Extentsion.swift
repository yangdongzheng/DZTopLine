//
//  UIBarButtonItem+Extentsion.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    /// 搜索
    convenience init(searchTarget: AnyObject?, action: Selector) {
        let btn = UIButton(type: UIButtonType.system)
        btn.setImage(UIImage(named: "icon_navigation_search"), for: UIControlState())
        btn.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        btn.tintColor = UIColor.blue
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        btn.addTarget(searchTarget, action: action, for: UIControlEvents.touchUpInside)
        self.init(customView: btn)
    }
    
    
}
