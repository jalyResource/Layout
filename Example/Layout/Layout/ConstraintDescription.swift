//
//  ConstraintDescription.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit


class ConstraintDescription {
    
    let fromView: ConstraintView
    let fromAttribute: ConstraintLayoutAttribute
    
    var toView: ConstraintView?
    var toAttribute: ConstraintLayoutAttribute?
    
    var relation: ConstraintRelation = .equal
    var multiplier: CGFloat = 1.0
    var constant: ConstraintConstantTarget = 0.0
    
    
    init(_ item: ConstraintView, attribute: ConstraintLayoutAttribute) {
        fromView = item
        fromAttribute = attribute
    }
    
}
