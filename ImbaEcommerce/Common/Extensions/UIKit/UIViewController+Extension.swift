//
//  UIViewController+Extension.swift
//  novera-ios
//
//  Created by hainv on 8/9/19.
//  Copyright © 2019 noveramirror. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController{
    class func instantiateFromStoryboard(storyboardName: String, storyboardId: String) -> Self {
        return instantiateFromStoryboardHelper(storyboardName: storyboardName, storyboardId: storyboardId)
    }
    
    private class func instantiateFromStoryboardHelper<T>(storyboardName: String, storyboardId: String) -> T {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: storyboardId) as! T
        return controller
    }
}


extension UITableViewHeaderFooterView {
    class func dequeueReuseHeaderWithClass(in tableView: UITableView,
                                           reuseIdentifier text: String) -> Self {
        return dequeueReuseHeaderWithClassTemplate(in: tableView,
                                                   reuseIdentifier: text)
    }
    
    private class func dequeueReuseHeaderWithClassTemplate<T>(in tableView: UITableView,
                                                              reuseIdentifier text: String) -> T {
        var cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: text)
        if cell == nil {
            cell = self.init(reuseIdentifier: text)
        }
        return cell as! T
    }
    
    class func dequeueReuseHeaderWithNib(in tableView: UITableView,
                                         reuseIdentifier text: String,
                                         nibName nibNameOrNil: String? = nil) -> Self {
        return dequeueReuseHeaderWithNibTemplate(in: tableView,
                                                 reuseIdentifier: text,
                                                 nibName: nibNameOrNil)
    }
    
    private class func dequeueReuseHeaderWithNibTemplate<T>(in tableView: UITableView,
                                                            reuseIdentifier text: String,
                                                            nibName nibNameOrNil: String?) -> T {
        var cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: text)
        if cell == nil {
            var cellNibName: String! = nibNameOrNil
            if cellNibName == nil {
                cellNibName = nibName()
            }
            let nib = UINib(nibName: cellNibName, bundle: nil)
            tableView.register(nib, forHeaderFooterViewReuseIdentifier: text)
            cell = tableView.dequeueReusableHeaderFooterView(withIdentifier: text)
        }
        return cell as! T
    }
    
    class func nibName() -> String {
        let nibName = String(describing: self)
        return nibName
    }
}

extension UIApplication {
    public var topViewController: UIViewController? {
        guard var topViewController = UIApplication.shared.keyWindow?.rootViewController else { return nil }
        
        while let presentedViewController = topViewController.presentedViewController {
            topViewController = presentedViewController
        }
        return topViewController
    }
    
    public var topNavigationController: UINavigationController? {
        return topViewController as? UINavigationController
    }
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
