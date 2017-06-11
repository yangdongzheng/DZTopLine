//
//  DZFeedMovieCell.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

class DZFeedMovieCell: DZTableViewCell {

    override func setupUI() {
        addSubview(titleLabel)
        addSubview(movieImage)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let width: CGFloat = bounds.width
//        let height: CGFloat = bounds.height
        titleLabel.frame = CGRect.init(x: kMargin, y: kMargin, width: width - kMargin * 2, height: kLabelHeight);
        movieImage.frame = CGRect.init(x: kMargin, y: titleLabel.frame.maxY + kMargin, width: kScreenWidth - 2 * kMargin, height: kMovieImageHeight);
    }
    
    class func heightForView() -> CGFloat {
        return kMovieImageHeight + kLabelHeight + kMargin * 3
    }
    
    fileprivate lazy var titleLabel: UILabel = {
        return UILabel(common: true)
    }()
    
    fileprivate lazy var movieImage: UIImageView = {
        return UIImageView.init(common: true)
    }()
}

