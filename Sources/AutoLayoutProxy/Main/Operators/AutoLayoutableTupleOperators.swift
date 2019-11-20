//
//  AutoLayoutableTupleOperators.swift
//  AutoLayoutProxy
//
//  Created by Bibin Jacob Pulickal on 12/08/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

#if canImport(UIKit)
import UIKit
#elseif canImport(Cocoa)
import Cocoa
#endif

// MARK: Double Anchor Constraint

@available(OSX 10.11, *)
public func == <LeftAnchorType, RightAnchorType>(
    lhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>),
    rhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>)) {
    lhs.0.constraint(equalTo: rhs.0).isActive   = true
    lhs.1.constraint(equalTo: rhs.1).isActive   = true
}

@available(OSX 10.11, *)
public func <= <LeftAnchorType, RightAnchorType>(
    lhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>),
    rhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>)) {
    lhs.0.constraint(lessThanOrEqualTo: rhs.0).isActive   = true
    lhs.1.constraint(lessThanOrEqualTo: rhs.1).isActive   = true
}

@available(OSX 10.11, *)
public func >= <LeftAnchorType, RightAnchorType>(
    lhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>),
    rhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>)) {
    lhs.0.constraint(greaterThanOrEqualTo: rhs.0).isActive   = true
    lhs.1.constraint(greaterThanOrEqualTo: rhs.1).isActive   = true
}

// MARK: - Double Dimension Anchor Constraint With Constant And Relation

@available(OSX 10.11, *)
public func == (lhs: (NSLayoutDimension, NSLayoutDimension), rhs: SizeConvertible) {
    lhs.0.constraint(equalToConstant: rhs.width).isActive   = true
    lhs.1.constraint(equalToConstant: rhs.height).isActive  = true
}

@available(OSX 10.11, *)
public func <= (lhs: (NSLayoutDimension, NSLayoutDimension), rhs: SizeConvertible) {
    lhs.0.constraint(lessThanOrEqualToConstant: rhs.width).isActive   = true
    lhs.1.constraint(lessThanOrEqualToConstant: rhs.height).isActive  = true
}

@available(OSX 10.11, *)
public func >= (lhs: (NSLayoutDimension, NSLayoutDimension), rhs: SizeConvertible) {
    lhs.0.constraint(greaterThanOrEqualToConstant: rhs.width).isActive   = true
    lhs.1.constraint(greaterThanOrEqualToConstant: rhs.height).isActive  = true
}

// MARK: - Double Anchor And Constant Combinations

@available(OSX 10.11, *)
public func + (lhs: (NSLayoutAnchor<NSLayoutXAxisAnchor>, NSLayoutAnchor<NSLayoutYAxisAnchor>),
               rhs: OffsetConvertible)
    -> ((NSLayoutAnchor<NSLayoutXAxisAnchor>, NSLayoutAnchor<NSLayoutYAxisAnchor>), (CGFloat, CGFloat)) {
        ((lhs.0, lhs.1), (rhs.horizontal, rhs.vertical))
}

@available(OSX 10.11, *)
public func + (lhs: (NSLayoutAnchor<NSLayoutXAxisAnchor>, NSLayoutAnchor<NSLayoutXAxisAnchor>),
               rhs: EdgeInsetConvertible)
    -> ((NSLayoutAnchor<NSLayoutXAxisAnchor>, NSLayoutAnchor<NSLayoutXAxisAnchor>), (CGFloat, CGFloat)) {
        ((lhs.0, lhs.1), (rhs.left, rhs.right))
}

@available(OSX 10.11, *)
public func + (lhs: (NSLayoutAnchor<NSLayoutYAxisAnchor>, NSLayoutAnchor<NSLayoutYAxisAnchor>),
               rhs: EdgeInsetConvertible)
    -> ((NSLayoutAnchor<NSLayoutYAxisAnchor>, NSLayoutAnchor<NSLayoutYAxisAnchor>), (CGFloat, CGFloat)) {
        ((lhs.0, lhs.1), (rhs.top, rhs.bottom))
}

// MARK: - Double Anchor Constraint With Constant And Relation

@available(OSX 10.11, *)
public func == <LeftAnchorType, RightAnchorType>(
    lhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>),
    rhs: ((NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>), (CGFloat, CGFloat))) {
    lhs.0.constraint(equalTo: rhs.0.0, constant: rhs.1.0).isActive   = true
    lhs.1.constraint(equalTo: rhs.0.1, constant: rhs.1.1).isActive   = true
}

@available(OSX 10.11, *)
public func <= <LeftAnchorType, RightAnchorType>(
    lhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>),
    rhs: ((NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>), (CGFloat, CGFloat))) {
    lhs.0.constraint(lessThanOrEqualTo: rhs.0.0, constant: rhs.1.0).isActive   = true
    lhs.1.constraint(lessThanOrEqualTo: rhs.0.1, constant: rhs.1.1).isActive   = true
}

@available(OSX 10.11, *)
public func >= <LeftAnchorType, RightAnchorType>(
    lhs: (NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>),
    rhs: ((NSLayoutAnchor<LeftAnchorType>, NSLayoutAnchor<RightAnchorType>), (CGFloat, CGFloat))) {
    lhs.0.constraint(greaterThanOrEqualTo: rhs.0.0, constant: rhs.1.0).isActive   = true
    lhs.1.constraint(greaterThanOrEqualTo: rhs.0.1, constant: rhs.1.1).isActive   = true
}
