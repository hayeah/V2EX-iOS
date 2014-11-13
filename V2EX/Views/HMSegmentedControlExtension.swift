//
//  HMSegmentedControlExtension.swift
//  V2EX
//
//  Created by WildCat on 13/11/2014.
//  Copyright (c) 2014 WildCat. All rights reserved.
//

import UIKit

extension HMSegmentedControl {

    public override func prepareForInterfaceBuilder() {
        setUp()
    }
    
    func setUp() {
        // Set up tabSegmentedControl
        sectionTitles = ["全部", "最热", "R2", "问与答", "技术", "创意", "好玩", "Apple", "酷工作", "交易", "城市", "关注"]
        selectionStyle = HMSegmentedControlSelectionStyleFullWidthStripe
        selectionIndicatorColor = UIColor(red: 0.91, green: 0.3, blue: 0.24, alpha: 1)
        selectionIndicatorHeight = 3.0
        selectionIndicatorLocation = HMSegmentedControlSelectionIndicatorLocationDown
        backgroundColor = UIColor(red:1, green:0.98, blue:0.95, alpha:1)
    }
}

@IBDesignable class IB_HMSegmentedControl: HMSegmentedControl {
    
}
