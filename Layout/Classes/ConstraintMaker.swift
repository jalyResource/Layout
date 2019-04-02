//
//  ConstraintMaker.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation


public class ConstraintMaker {
    
    public var top: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.top)
    }
    
    public var left: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.left)
    }
    
    public var right: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.right)
    }
    
    public var bottom: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.bottom)
    }
    
    public var width: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.width)
    }
    
    public var height: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.height)
    }
    
    public var size: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.size)
    }
    
    public var centerY: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.centerY)
    }
    
    public var centerX: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.centerX)
    }
    
    public var center: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.center)
    }
    
    
    private func makeConstraintmakerRelatable(_ attribute: ConstraintLayoutAttribute) -> ConstraintMakerRelatable {
        let description = ConstraintDescription(self.item, attribute: attribute)
        descriptions.append(description)
        return ConstraintMakerRelatable(description)
    }
    
    
    
    
    
    internal static func prepareConstraints(_ item: ConstraintView, closure: (_ make: ConstraintMaker) -> ()) -> [Constraint] {
        let maker = ConstraintMaker(item)
        closure(maker)
        var constraints = [Constraint]()
        
        for desctiption in maker.descriptions {
            if let constraint = desctiption.constraint {
                constraints.append(constraint)
            }
        }
        
        return constraints
    }
    
    
    static func makeConstraint(_ item: ConstraintView, closure: (_ make: ConstraintMaker) -> ()) {
        let constraints = prepareConstraints(item, closure: closure)
        
        for constraint in constraints {
            constraint.activeIfNeeded(needUpdate: false)
        }
    }
    
    static func updateConstraint(_ item: ConstraintView, closure: (_ make: ConstraintMaker) -> ()) {
        guard item.arrConstraints.count > 0 else {
            makeConstraint(item, closure: closure)
            return
        }
        
        let constraints = prepareConstraints(item, closure: closure)
        
        for constraint in constraints {
            constraint.activeIfNeeded(needUpdate: true)
        }
    }
    
    static func remakeConstraint(_ item: ConstraintView, closure: (_ make: ConstraintMaker) -> ()) {
        item.removeAllConstraint()
        
        self.makeConstraint(item, closure: closure)
    }
    
    var descriptions: [ConstraintDescription] = []
    
    let item: ConstraintView
    init(_ item: ConstraintView) {
        self.item = item
        self.item.prepare()
    }
}
