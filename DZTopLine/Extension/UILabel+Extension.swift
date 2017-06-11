//
//  UILabel+Extension.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

extension UILabel {
    convenience init(common: Bool) {
        self.init()
        text = "千万别让赵丽颖和谢娜在一起，场面何老师都控制不住，哈哈哈"
        numberOfLines = 2
        textColor = UIColor.black
        backgroundColor = UIColor.white
        font = UIFont.boldSystemFont(ofSize: 16.0)
    }
}
