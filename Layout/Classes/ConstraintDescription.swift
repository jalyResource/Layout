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
    
    lazy var constraint: Constraint? = {
//        guard let toV = self.toView,
//              let toAtt = self.toAttribute
//         else {
//            return nil
//        }
        let item = ConstraintItem(self.fromView, attribute: self.fromAttribute)
        let toItem = ConstraintItem(self.toView, attribute: self.toAttribute ?? .none)
        
        return Constraint(from: item, 
                          to: toItem, 
                          relation: self.relation, 
                          multiplier: self.multiplier, 
                          constant: self.constant)
    }()
    
    init(_ item: ConstraintView, attribute: ConstraintLayoutAttribute) {
        fromView = item
        fromAttribute = attribute
    }
    
}
