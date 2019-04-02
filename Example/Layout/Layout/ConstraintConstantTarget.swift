//
//  ConstraintConstantTarget.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/2.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

protocol ConstraintConstantTarget {
}

extension Int: ConstraintConstantTarget {
}

extension UInt: ConstraintConstantTarget {
}

extension Float: ConstraintConstantTarget {
}

extension Double: ConstraintConstantTarget {
}

extension CGFloat: ConstraintConstantTarget {
}

extension CGSize: ConstraintConstantTarget {
}

extension ConstraintConstantTarget {
    
    func constraintConstantTargetValueFor(layoutAttribute: NSLayoutAttribute) -> CGFloat {
        if let value = self as? CGFloat {
            return value
        }
        if let value = self as? Float {
            return CGFloat(value)
        }
        if let value = self as? Double {
            return CGFloat(value)
        }
        if let value = self as? UInt {
            return CGFloat(value)
        }
        if let value = self as? Int {
            return CGFloat(value)
        }
        if let value = self as? CGSize {
            if layoutAttribute == .width {
                return CGFloat(value.width)
            } else {
                return CGFloat(value.height)
            }
        }
        
        return 0.0
    }
}
