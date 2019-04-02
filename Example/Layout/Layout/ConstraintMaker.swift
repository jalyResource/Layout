//
//  ConstraintMaker.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation


class ConstraintMaker {
    
    var top: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.top)
    }
    
    var left: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.left)
    }
    
    var right: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.right)
    }
    
    var bottom: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.bottom)
    }
    
    var centerY: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.centerY)
    }
    
    var centerX: ConstraintMakerRelatable {
        return makeConstraintmakerRelatable(.centerX)
    }
    
    
    private func makeConstraintmakerRelatable(_ attribute: ConstraintLayoutAttribute) -> ConstraintMakerRelatable {
        let description = ConstraintDescription(self.item, attribute: attribute)
        descriptions.append(description)
        return ConstraintMakerRelatable(description)
    }
    
    
    func prepare() -> Void {
        self.item.translatesAutoresizingMaskIntoConstraints = false
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
            constraint.activeIfNeeded()
        }
    }
    
    
    var descriptions: [ConstraintDescription] = []
    
    let item: ConstraintView
    init(_ item: ConstraintView) {
        self.item = item
        self.prepare()
    }
}
