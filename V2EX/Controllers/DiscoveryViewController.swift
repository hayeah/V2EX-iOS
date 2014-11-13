//
//  DiscoveryViewController.swift
//  V2EX
//
//  Created by WildCat on 12/11/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit

class DiscoveryViewController: UIViewController {

    @IBOutlet weak var tabSegmentedControl: HMSegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tabSegmentedControl.setUp()
    }
    
}
