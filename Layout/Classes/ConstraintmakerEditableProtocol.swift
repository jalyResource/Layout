//
//  ConstraintmakerEditableProtocol.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/3.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import Foundation


public protocol ConstraintmakerEditableProtocol {
}

extension ConstraintMakerRelatable: ConstraintmakerEditableProtocol {
    
    public var top: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.top)
        return self
    }
    
    public var left: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.left)
        return self
    }
    
    public var right: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.right)
        return self
    }
    
    public var bottom: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.bottom)
        return self
    }
    
    public var width: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.width)
        return self
    }
    //    
    public var height: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.height)
        return self
    }
    
    public var size: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.size)
        return self
    }
    //    
    public var centerY: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.centerY)
        return self
    }
    
    public var centerX: ConstraintMakerRelatable {
        self.description.fromAttribute.insert(.centerX)
        return self
    }
    //    
    //    public var center: ConstraintMakerRelatable {
    //        return makeConstraintmakerRelatable(.center)
    //    }
}
