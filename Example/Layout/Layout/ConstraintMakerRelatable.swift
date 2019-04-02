//
//  ConstraintMakerRelatable.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

protocol ConstraintRelatableTarget {
}

extension UInt: ConstraintRelatableTarget {
}

extension Int: ConstraintRelatableTarget {
}

extension Float: ConstraintRelatableTarget {
    
}

extension Double: ConstraintRelatableTarget {
    
}

extension CGFloat: ConstraintRelatableTarget {
}

extension CGSize: ConstraintRelatableTarget {
}

extension ConstraintItem: ConstraintRelatableTarget {
}

extension ConstraintView: ConstraintRelatableTarget {
}


class ConstraintMakerRelatable {
    let description: ConstraintDescription
    
    init(_ description: ConstraintDescription) {
        self.description = description
    }
    
    private func relatedTo(_ other: ConstraintRelatableTarget, relation: ConstraintRelation) -> ConstraintMakerEditable {
        
        let related: ConstraintItem
        let constant: ConstraintConstantTarget
        
        
        if let other = other as? ConstraintItem { // 最后做
            related = other
            constant = 0.0
        } else if let view = other as? ConstraintView {  // 第二做
            related = ConstraintItem(view, attribute: .none)
            constant = 0.0
        } else if let constantValue = other as? ConstraintConstantTarget { // 1
            related = ConstraintItem(nil, attribute: .none)
            constant = constantValue
        } else {
            constant = 0.0
            fatalError("Invalide constraint in `relatedTo`")
        }
        
        description.toView = related.item
        description.toAttribute = related.attribute
        
        description.relation = relation
        description.constant = constant
        
        return ConstraintMakerEditable(description)
    }
    
    @discardableResult
    func equalTo(_ other: ConstraintRelatableTarget) -> ConstraintMakerEditable {
        return self.relatedTo(other, relation: .equal)
    }   
    
    @discardableResult
    func equalToSuperview() -> ConstraintMakerEditable {
        guard let superView = description.fromView.superview else {
            fatalError("Exception superview but found nil when attemping make constraint `equalToSuperview`")
        }
        return self.relatedTo(superView, relation: .equal)
    }
}
