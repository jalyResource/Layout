//
//  Constraint.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/2.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit


public final class Constraint {
    
    private let from: ConstraintItem
    private let to: ConstraintItem
    
    private let relation: ConstraintRelation
    private let multiplier: CGFloat
    private var constant: ConstraintConstantTarget = 0.0
    
    private var layoutConstraints: [LayoutConstraint] = []
    
    
    init(from: ConstraintItem,
         to: ConstraintItem,
         relation: ConstraintRelation,
         multiplier: CGFloat,
         constant: ConstraintConstantTarget) {
        self.from = from
        self.to = to
        
        self.relation = relation
        self.multiplier = multiplier
        self.constant = constant
        
        var ltConstraints: [LayoutConstraint] = []
        
        guard let fromView = from.item else {
            fatalError("from view is nil while activeIfNeeded")
        }
        var toView: ConstraintView?
        if (from.attribute.contains(.width) || from.attribute.contains(.height)) &&
            to.item == nil {
            toView = nil
        } else {
            // to.attribute.layoutAttribute()
            toView = to.item ?? fromView.superview
        }
        
        let fromAttrs = from.attribute.layoutAttribute()
        var toAttrs = to.attribute.layoutAttribute()
        let attsNumberEqual = fromAttrs.count == toAttrs.count
        
        for fromAttr in fromAttrs {
            var toAttr: NSLayoutAttribute
            
            if nil == toView {
                toAttr = .notAnAttribute
            } else { // to.attribute.layoutAttribute()
                if attsNumberEqual {
                    toAttr = toAttrs[fromAttrs.index(of: fromAttr)!]
                } else {
                    toAttr = fromAttr
                }
            }
            
            let relation = self.relation.layoutRelation
            let constant = self.constant.constraintConstantTargetValueFor(layoutAttribute: fromAttr)
            
            let constraint = LayoutConstraint(item: fromView, attribute: fromAttr, relatedBy:  relation, toItem: toView, attribute: toAttr, multiplier: self.multiplier, constant: constant)
            ltConstraints.append(constraint)
        }
        
        self.layoutConstraints.append(contentsOf: ltConstraints)
    }
    
    
    internal func activeIfNeeded(needUpdate: Bool) {
        if needUpdate {
            // var existingLayoutConstraints: [NSLayoutConstraint] = []
            guard let existingConstraints = from.item?.arrConstraints else {
                fatalError("none constrint when UpdateConstraint")
            }
            
            var allLayoutConstraints: [LayoutConstraint] = []
            for constraint in existingConstraints {
                allLayoutConstraints.append(contentsOf: constraint.layoutConstraints)
            }
            
            for layoutConstraint in self.layoutConstraints {
                let first = allLayoutConstraints.first { (lt) -> Bool in
                    return lt == layoutConstraint
                }
                
                guard let exist = first else {
                    fatalError("not found update layoutConstraints")
                }
                exist.constant = layoutConstraint.constant
            }
        } else {
            NSLayoutConstraint.activate(self.layoutConstraints)
            from.item?.add(self)
        }
    }
}
