//
//  LayoutConstraintItem.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/2.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

protocol LayoutConstraintItem {
}


extension ConstraintView: LayoutConstraintItem {
    
}

extension LayoutConstraintItem {
    
    func prepare() -> Void {
        if let v = self as? ConstraintView {
            v.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    var arrConstraints: [Constraint] {
        return setConstraint.allObjects as! [Constraint]
    }
    
    func add(_ constraint: Constraint) {
        setConstraint.add(constraint)
    }
    
    func remove(_ constraint: Constraint) -> Void {
        setConstraint.remove(constraint)
    }
    
    private var setConstraint: NSMutableSet {
        let constraintSet: NSMutableSet
        
        if let set = objc_getAssociatedObject(self, &kSetkey) as? NSMutableSet {
            constraintSet = set
        } else {
            constraintSet = NSMutableSet()
            
            objc_setAssociatedObject(self, &kSetkey, constraintSet, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        
        return constraintSet
    }
    
}

private var kSetkey: UInt8 = 0
