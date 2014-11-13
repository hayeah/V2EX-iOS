//
//  UIViewControllerExtension.swift
//  V2EX
//
//  Created by WildCat on 13/11/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit

extension UIViewController {
    @IBAction func sideMenuButtonTouched(sender: UIBarButtonItem) {
        RootViewController.displaySideMenu()
    }
}
