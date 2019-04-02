//
//  ConstraintItem.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation

public class ConstraintItem {
    
    let item: ConstraintView?
    let attribute: ConstraintLayoutAttribute
    
    
    init(_ item: ConstraintView?, attribute: ConstraintLayoutAttribute) {
        self.item = item
        self.attribute = attribute
    }
    
}
