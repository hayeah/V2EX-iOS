//
//  RootViewController.swift
//  V2EX
//
//  Created by WildCat on 11/11/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, RNFrostedSidebarDelegate {
    
    var containerViewController: ContainerViewController!
    
    let sideMenuIndex = NSMutableIndexSet(index: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    class func displaySideMenu(animated: Bool = true) {
        let rootViewController = UIApplication.sharedApplication().keyWindow!.rootViewController as RootViewController
        rootViewController.showSideMenu(animated: true)
    }
    
    // TODO: Implement side menu with fixed position for iPad or iPhone landscape
    func showSideMenu(animated: Bool = true) {
        let images = [
            UIImage(named: "globe_icon")!,
            UIImage(named: "nodes_icon")!,
            UIImage(named: "individual_icon")!,
            UIImage(named: "settings_icon")!,
        ]
        
        var colors = [UIColor]()
        for _ in 1...4 {
            colors.append(UIColor(red: 0.91, green: 0.3, blue: 0.24, alpha: 1))
        }
    
        let sideMenu = RNFrostedSidebar(images: images, selectedIndices: sideMenuIndex, borderColors: colors)
        sideMenu.delegate = self
        sideMenu.showAnimated(animated)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "embedContainer" {
            containerViewController = segue.destinationViewController as ContainerViewController
        }
    }
    
    // MARK: RNFrostedSidebarDelegate
    
    func sidebar(sidebar: RNFrostedSidebar!, didTapItemAtIndex index: UInt) {
        var toViewController: UIViewController!
        switch index {
        case 0:
            toViewController = containerViewController.discoveryViewController
        case 1:
            toViewController = containerViewController.nodeListViewController
        case 2:
            toViewController = containerViewController.userViewController
        case 3:
            toViewController = containerViewController.preferenceViewController
        default:
            toViewController = containerViewController.discoveryViewController
        }
        
        containerViewController.viewControllers = [toViewController]
    }
    
    func sidebar(sidebar: RNFrostedSidebar!, didEnable itemEnabled: Bool, itemAtIndex index: UInt) {
        sideMenuIndex.removeAllIndexes()
        if itemEnabled {
            sideMenuIndex.addIndex(Int(index))
        }
        sidebar.dismiss()
    }
}

