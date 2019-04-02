//
//  ConstraintMaker.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation


class ConstraintMaker {
    
    // make.top.equalToSuperview().offset(100)
    var top: ConstraintMakerRelatable {
        let description = ConstraintDescription(self.item, attribute: .top)
        descriptions.append(description)
        return ConstraintMakerRelatable(description)
    }
    
    var left: ConstraintMakerRelatable {
        let description = ConstraintDescription(self.item, attribute: .left)
        descriptions.append(description)
        return ConstraintMakerRelatable(description)
    }
    
    static func makeConstraint(_ item: ConstraintView, closure: (_ make: ConstraintMaker) -> ()) {
        let maker = ConstraintMaker(item)
        closure(maker)
    }
    
    
    var descriptions: [ConstraintDescription] = []
    
    let item: ConstraintView
    init(_ item: ConstraintView) {
        self.item = item
    }
}
