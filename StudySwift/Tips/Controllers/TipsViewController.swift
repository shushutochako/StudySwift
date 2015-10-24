//
//  TipsViewController.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

class TipsViewController: UIViewController {
    
    @IBOutlet weak var strTable: UITableView! {
        didSet {
            self.strTable.delegate = self
            self.strTable.dataSource = self
        }
    }
    @IBOutlet weak var textLabel: UILabel! {
        didSet {
            // ラベルの設定情報をまとめる
            self.textLabel.text = "設定するよ"
            self.textLabel.backgroundColor = UIColor.blueColor()
            self.textLabel.textColor = UIColor.whiteColor()
            self.textLabel.font = UIFont.systemFontOfSize(14)
        }
    }
    private var tableItems = [String]() {
        didSet {
            guard let table = self.strTable else {
                return
            }
            // データソースが更新されたらテーブルをリロード
            table.reloadData()
        }
    }
    
    class func push(fromVC: UIViewController) {
        let storyboard = UIStoryboard(name: "TipsViewController", bundle: nil)
        let toVC = storyboard.instantiateInitialViewController()
        fromVC.navigationController!.pushViewController(toVC!, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tapCreateTable(sender: AnyObject) {
        var array = [String]()
        let randNum = arc4random() % 5
        for i in 0...randNum {
            array.append("アイテム\(i)")
        }
        self.tableItems = array
    }
}

extension TipsViewController: UITableViewDataSource {
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tableItems.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = self.tableItems[indexPath.row]
        return cell
    }
}

extension TipsViewController: UITableViewDelegate {
}
