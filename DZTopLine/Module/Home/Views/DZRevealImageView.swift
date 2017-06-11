//
//  DZRevealImageView.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

class DZRevealImageView: UIScrollView {

    open var imageViews: [UIImageView] = [];
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        buildImageViews()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for index in 0...kMaxCount {
            let imageView = imageViews[index]
            let width = DZRevealImageView.widthForImage()
            imageView.frame = CGRect.init(x: CGFloat(index) * (kMargin + width), y: 0.0, width:width , height: width)
            addSubview(imageView)
        }
    }

    fileprivate func buildImageViews() {
        for _ in 0...kMaxCount {
            imageViews.append(buildImageView())
        }
    }
    
    func buildImageView() -> UIImageView {
        return UIImageView(common: true)
    }
    
    
    class func heightForView() -> CGFloat {
        return widthForImage()
    }
    
    class func widthForImage() -> CGFloat {
        return (kScreenWidth - kMargin * 4) / 3
    }
    
    class func heightForImage() -> CGFloat {
        return widthForImage()
    }
}
