//
//  DZCollectionViewCell.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

class DZCollectionViewCell: UICollectionViewCell {
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(movieImage)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        movieImage.frame = bounds
    }
    
    fileprivate lazy var movieImage: UIImageView = {
        return UIImageView.init(common: true)
    }()
    
}
