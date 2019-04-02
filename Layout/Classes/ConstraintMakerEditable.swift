//
//  ConstraintMakerEditable.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit


public class ConstraintMakerEditable {
    let description: ConstraintDescription
    
    init(_ description: ConstraintDescription) {
        self.description = description
    }
    
    public func offset(_ value: ConstraintOffsetTarget) -> Void {
        description.constant = value.constraintOffsetTargetValue
    }
    
}



public protocol ConstraintOffsetTarget {
}

extension Int: ConstraintOffsetTarget {
}

extension UInt: ConstraintOffsetTarget {
}

extension Float: ConstraintOffsetTarget {
}

extension Double: ConstraintOffsetTarget {
}

extension CGFloat: ConstraintOffsetTarget {
}

extension ConstraintOffsetTarget {
    
    var constraintOffsetTargetValue: CGFloat {
        if let value = self as? Int {
            return CGFloat(value)
        }
        if let value = self as? UInt {
            return CGFloat(value)
        }
        if let value = self as? Float {
            return CGFloat(value)
        }
        if let value = self as? CGFloat {
            return CGFloat(value)
        }
        if let value = self as? Double {
            return CGFloat(value)
        }
        return 0.0
    }
    
}
