//
//  ConstraintView.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

public typealias ConstraintView = UIView


public extension ConstraintView {
    
    var jl: ConstraintViewDSL {
        return ConstraintViewDSL(self)
    }
    
}
