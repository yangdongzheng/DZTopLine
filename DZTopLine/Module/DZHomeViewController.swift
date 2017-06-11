//
//  DZHomeViewController.swift
//  DZTopLine
//
//  Created by mac on 2017/6/11.
//  Copyright © 2017年 MarkYang. All rights reserved.
//

import UIKit

class DZHomeViewController: DZTableViewController {
    
    override func loadView() {
        super.loadView()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(searchTarget: self, action: #selector(DZHomeViewController.didClickSearchButton))
        
        tableView.register(DZFeedCell.self, forCellReuseIdentifier: "DZFeedCell")
        tableView.register(DZFeedMovieCell.self, forCellReuseIdentifier: "DZFeedMovieCell")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "首页"
    }
    
    @objc fileprivate func didClickSearchButton() {
        navigationController?.pushViewController(DZSearchViewController(), animated: true)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if indexPath.row % 2 == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: "DZFeedCell", for: indexPath)
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "DZFeedMovieCell", for: indexPath)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row % 2 == 0 {
            return DZFeedCell.heightForView()
        } else {
            return DZFeedMovieCell.heightForView()
        }
    }
}
