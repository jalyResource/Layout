//
//  LayoutRelation.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit

enum ConstraintRelation {
    
    case lessThanOrEqual
    
    case equal
    
    case greaterThanOrEqual
    
    var layoutRelation: NSLayoutRelation {
        let relation: NSLayoutRelation
        
        switch self {
        case .lessThanOrEqual:
            relation = .lessThanOrEqual
        case .equal:
            relation = .equal
        case .greaterThanOrEqual:
            relation = .greaterThanOrEqual
        default:
            relation = .equal
        }
        
        return relation
    }
}

//Int {
//    
//    
//    case lessThanOrEqual
//    
//    case equal
//    
//    case greaterThanOrEqual
