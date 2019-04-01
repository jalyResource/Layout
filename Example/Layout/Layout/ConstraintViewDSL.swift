//
//  ConstraintViewDSL.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation


public struct ConstraintViewDSL {
    
    func makeConstraints(_ closure: (_ make: ConstraintMaker) -> ()) {
        ConstraintMaker.makeConstraint(self.item, closure: closure)
    }
    
    
    internal let item: ConstraintView
    
    init(_ item: ConstraintView) {
        self.item = item
    }
}
