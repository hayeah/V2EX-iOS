//
//  NodeListViewController.swift
//  V2EX
//
//  Created by WildCat on 13/11/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit

class NodeListViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sideMenuButtonTouched(sender: UIBarButtonItem) {
        RootViewController.displaySideMenu()
    }
}
