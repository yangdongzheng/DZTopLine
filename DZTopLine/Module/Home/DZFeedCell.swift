//
//  DZFeedCell.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

class DZFeedCell: DZTableViewCell {

    override func setupUI() {
        addSubview(titleLabel)
        addSubview(revealView)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let width: CGFloat = bounds.width
//        let height: CGFloat = bounds.height
        titleLabel.frame = CGRect.init(x: kMargin, y: kMargin, width: width - kMargin * 2, height: kLabelHeight);
        revealView.frame = CGRect.init(x: kMargin, y: titleLabel.frame.maxY + kMargin, width: kScreenWidth - 2 * kMargin, height: DZRevealImageView.heightForView());
    }
    
    class func heightForView() -> CGFloat {
        return DZRevealImageView.heightForView() + kLabelHeight + kMargin * 3
    }
    
    fileprivate lazy var titleLabel: UILabel = {
        return UILabel(common: true)
    }()

    fileprivate lazy var revealView: DZRevealImageView = {
        let view = DZRevealImageView()
        return view
    }()
}
