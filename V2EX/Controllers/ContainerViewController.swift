//
//  ContainerViewController.swift
//  V2EX
//
//  Created by WildCat on 11/11/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit

class ContainerViewController: UINavigationController {
    
    var discoveryViewController: UIViewController!
    lazy var nodeListViewController: UIViewController = self.storyboard!.instantiateViewControllerWithIdentifier("nodeListVC") as UIViewController
    lazy var userViewController: UIViewController = self.storyboard!.instantiateViewControllerWithIdentifier("userVC") as UIViewController
    lazy var preferenceViewController: UIViewController = self.storyboard!.instantiateViewControllerWithIdentifier("preferenceVC") as UIViewController
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        discoveryViewController = viewControllers[0] as UIViewController
    }

    
}
