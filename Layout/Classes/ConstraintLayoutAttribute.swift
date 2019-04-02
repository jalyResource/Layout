//
//  ConstraintLayoutAttribute.swift
//  Layout_Example
//
//  Created by li’Pro on 2019/4/1.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit


struct ConstraintLayoutAttribute: OptionSet, ExpressibleByIntegerLiteral {
    typealias IntegerLiteralType = UInt
    var rawValue: UInt
    
    init(rawValue: UInt) {
        self.rawValue = rawValue
    }
    init(integerLiteral value: IntegerLiteralType) {
        self.init(rawValue: value)
    }
    
    
    public static var none : ConstraintLayoutAttribute { return 0 }
    public static var left : ConstraintLayoutAttribute { return 1 }
    public static var top : ConstraintLayoutAttribute { return 2 }
    public static var right : ConstraintLayoutAttribute { return 4 }
    public static var bottom : ConstraintLayoutAttribute { return 8 }
    
    public static var width : ConstraintLayoutAttribute { return 16 }
    public static var height : ConstraintLayoutAttribute { return 32 }
    
    public static var centerX : ConstraintLayoutAttribute { return 64 }
    public static var centerY : ConstraintLayoutAttribute { return 128 }
    
    
    // aggregates
    public static var center : ConstraintLayoutAttribute { return 192 }
    // 
    public static var size: ConstraintLayoutAttribute { return 48 }
    public static var edges: ConstraintLayoutAttribute { return 15 }
    
    
    func layoutAttribute() -> [NSLayoutAttribute] {
        var attrs = [NSLayoutAttribute]()
        
        if self.contains(.left) {
            attrs.append(.left)
        }
        if self.contains(.top) {
            attrs.append(.top)
        }
        if self.contains(.right) {
            attrs.append(.right)
        }
        if self.contains(.bottom) {
            attrs.append(.bottom)
        }
        if self.contains(.width) {
            attrs.append(.width)
        }
        if self.contains(.height) {
            attrs.append(.height)
        }
        
        if self.contains(.centerX) {
            attrs.append(.centerX)
        }
        if self.contains(.centerY) {
            attrs.append(.centerY)
        }
        
        return attrs
    }
    
    
}
