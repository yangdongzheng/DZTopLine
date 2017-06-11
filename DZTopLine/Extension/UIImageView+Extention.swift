//
//  UIImageView+Extention.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

extension UIImageView {
    convenience init(common: Bool) {
        self.init()
        backgroundColor = UIColor.blue
        clipsToBounds = true
        contentMode = UIViewContentMode.scaleAspectFill
        image = UIImage.init(named: "strategy_1.jpg")
    }
}


