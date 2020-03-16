//
//  BaseViewController.swift
//  ToanHocVui
//
//  Created by Trung iOS on 3/16/20.
//  Copyright © 2020 Fighting. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func roundCorner(views: [UIView], radius: CGFloat) {
        views.forEach { (view) in
            view.layer.cornerRadius = radius
            view.layer.masksToBounds = true
        }
    }

    func addBorder(views: [UIView], width: CGFloat, color: CGColor) {
        views.forEach { (view) in
            view.layer.borderWidth = width
            view.layer.borderColor = color
        }
    }

    func addShadow(views: [UIView], radius: CGFloat = 5) {
        views.forEach { (view) in
            view.layer.cornerRadius = 8
            view.layer.masksToBounds = true
            view.layer.shadowOpacity = 0.5
            view.layer.shadowOffset = CGSize(width: 2, height: 2)
            view.layer.shadowColor = UIColor.darkGray.cgColor
            view.clipsToBounds = false
            view.backgroundColor = .white
            view.layer.cornerRadius = radius
        }
    }
}
