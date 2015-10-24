//
//  ProfileViewController.swift
//  StudySwift
//
//  Created by MasujimaNobuyasu on 2015/10/24.
//  Copyright © 2015年 myname. All rights reserved.
//

import UIKit

protocol ProfileViewControllerDelegate {
    func onSubmit(name: String, comment: String)
}

enum EditType {
    case Create, Update(profile: ProfileModel)
    var title: String {
        switch self {
        case Create:
            return "ユーザ作成画面"
        case Update:
            return "ユーザ更新画面"
        }
    }
    var submitText: String {
        switch self {
        case Create:
            return "作成"
        case Update:
            return "更新"
        }
    }
}

class ProfileViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var nameField: UITextField! {
        didSet {
            self.nameField.delegate = self
        }
    }
    @IBOutlet weak var commentField: UITextField! {
        didSet {
            self.commentField.delegate = self
        }
    }
    @IBOutlet weak var submitButton: UIButton! {
        didSet {
            // インスタンスがセットされたらセレクタを登録
            self.submitButton.addTarget(self, action: Selector("tapSubmit:"), forControlEvents: .TouchUpInside)
        }
    }

    var editType: EditType?
    var delegate: ProfileViewControllerDelegate?
    
    // UIViewControllerのサブクラス且つProfileControllerDelegateに適合したクラス
    class func present<T where T: UIViewController, T: ProfileViewControllerDelegate>(fromVC: T, editType: EditType) {
        let storyboard = UIStoryboard(name: "ProfileViewController", bundle: nil)
        let toVC = storyboard.instantiateInitialViewController() as! ProfileViewController
        toVC.editType = editType
        toVC.delegate = fromVC
        fromVC.presentViewController(UINavigationController(rootViewController: toVC), animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.createNavigationItem()
        
        // enum値で画面タイトルとボタンのテキストを設定
        self.title = self.editType?.title
        self.submitButton.setTitle(self.editType?.submitText, forState: .Normal)
        
        switch self.editType! {
        case .Create:
            break
        case .Update(let profile):
            // updateの場合は初期値を設定
            self.nameField.text = profile.name
            self.commentField.text = profile.comment
        }
    }
    
    private func createNavigationItem() {
        let closeItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Done, target: self, action: "close")
        self.navigationItem.setLeftBarButtonItem(closeItem, animated: true)
    }
    
    func close() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func tapSubmit(sender: UIButton) {
        self.delegate?.onSubmit(self.nameField.text!, comment: self.commentField.text!)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}