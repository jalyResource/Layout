//
//  ConstraintDSl.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/2.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation


protocol ConstraintDSL {
    var target: ConstraintView? { get }
}

protocol ConstraintBaseAttributeDSL: ConstraintDSL {
    
}

extension ConstraintBaseAttributeDSL {
    
    public var left: ConstraintItem {
        return ConstraintItem(self.target, attribute: .left)
    }
    public var right: ConstraintItem {
        return ConstraintItem(self.target, attribute: .right)
    }
    public var top: ConstraintItem {
        return ConstraintItem(self.target, attribute: .top)
    }
    public var bottom: ConstraintItem {
        return ConstraintItem(self.target, attribute: .bottom)
    }
    
    public var width: ConstraintItem {
        return ConstraintItem(self.target, attribute: .width)
    }
    public var height: ConstraintItem {
        return ConstraintItem(self.target, attribute: .height)
    }
    public var size: ConstraintItem {
        return ConstraintItem(self.target, attribute: .size)
    }
    
    public var centerX: ConstraintItem {
        return ConstraintItem(self.target, attribute: .centerX)
    }
    public var centerY: ConstraintItem {
        return ConstraintItem(self.target, attribute: .centerY)
    }
    
}

protocol ConstraintAttributeDSL: ConstraintBaseAttributeDSL {
}

extension ConstraintAttributeDSL {
    
}
