//
//  LayoutConstraint.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/2.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

class LayoutConstraint: NSLayoutConstraint {
    
}



internal func ==(lt: LayoutConstraint, rt: LayoutConstraint) -> Bool {
    if  lt.firstItem === rt.firstItem &&
        lt.firstAttribute == rt.firstAttribute &&
        lt.secondItem === rt.secondItem &&
        lt.secondAttribute == rt.secondAttribute && 
        lt.multiplier == rt.multiplier &&
        lt.priority == rt.priority {
            return true
    }
    return false
}
