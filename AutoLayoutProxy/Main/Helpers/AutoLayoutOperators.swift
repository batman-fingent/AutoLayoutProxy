//
//  AutoLayoutOperators.swift
//  AutoLayoutProxy
//
//  Created by Frankenstein on 06/08/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//


@discardableResult public func ==(lhs: NSLayoutAnchor<NSLayoutXAxisAnchor>, rhs: NSLayoutAnchor<NSLayoutXAxisAnchor>) -> NSLayoutConstraint {
    let constraint = lhs.constraint(equalTo: rhs)
    constraint.isActive = true
    return constraint
}

@discardableResult public func ==(lhs: NSLayoutAnchor<NSLayoutYAxisAnchor>, rhs: NSLayoutAnchor<NSLayoutYAxisAnchor>) -> NSLayoutConstraint {
    let constraint = lhs.constraint(equalTo: rhs)
    constraint.isActive = true
    return constraint
}

@discardableResult public func ==(lhs: NSLayoutDimension, rhs: NSLayoutDimension) -> NSLayoutConstraint {
    let constraint = lhs.constraint(equalTo: rhs)
    constraint.isActive = true
    return constraint
}

@discardableResult public func <=<AnchorType>(lhs: NSLayoutAnchor<AnchorType>, rhs: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint {
    let constraint = lhs.constraint(lessThanOrEqualTo: rhs)
    constraint.isActive = true
    return constraint
}

@discardableResult public func >=<AnchorType>(lhs: NSLayoutAnchor<AnchorType>, rhs: NSLayoutAnchor<AnchorType>) -> NSLayoutConstraint {
    let constraint = lhs.constraint(greaterThanOrEqualTo: rhs)
    constraint.isActive = true
    return constraint
}


public func +<AnchorType>(lhs: NSLayoutAnchor<AnchorType>, rhs: CGFloat) -> (NSLayoutAnchor<AnchorType>, CGFloat, CGFloat) {
    return (lhs, 1, rhs)
}

public func -<AnchorType>(lhs: NSLayoutAnchor<AnchorType>, rhs: CGFloat) -> (NSLayoutAnchor<AnchorType>, CGFloat, CGFloat) {
    return (lhs, 1, -rhs)
}

public func *(lhs: NSLayoutAnchor<NSLayoutDimension>, rhs: CGFloat) -> (NSLayoutAnchor<NSLayoutDimension>, CGFloat, CGFloat) {
    return (lhs, rhs, 0)
}

public func /(lhs: NSLayoutAnchor<NSLayoutDimension>, rhs: CGFloat) -> (NSLayoutAnchor<NSLayoutDimension>, CGFloat, CGFloat) {
    return (lhs, 1/rhs, 0)
}

public func +(lhs: (NSLayoutAnchor<NSLayoutDimension>, CGFloat, CGFloat), rhs: CGFloat) -> (NSLayoutAnchor<NSLayoutDimension>, CGFloat, CGFloat) {
    return (lhs.0, lhs.1, rhs)
}

public func -(lhs: (NSLayoutAnchor<NSLayoutDimension>, CGFloat, CGFloat), rhs: CGFloat) -> (NSLayoutAnchor<NSLayoutDimension>, CGFloat, CGFloat) {
    return (lhs.0, lhs.1, -rhs)
}


@discardableResult public func ==<AnchorType>(lhs: NSLayoutAnchor<AnchorType>, rhs: (NSLayoutAnchor<AnchorType>, CGFloat, CGFloat)) -> NSLayoutConstraint {
    if let lhs = lhs as? NSLayoutDimension,
        let rhsAnchor = rhs.0 as? NSLayoutDimension {
        let constraint = lhs.constraint(equalTo: rhsAnchor, multiplier: rhs.1, constant: rhs.2)
        constraint.isActive = true
        return constraint
    } else {
        let constraint = lhs.constraint(equalTo: rhs.0, constant: rhs.2)
        constraint.isActive = true
        return constraint
    }
}

@discardableResult public func <=<AnchorType>(lhs: NSLayoutAnchor<AnchorType>, rhs: (NSLayoutAnchor<AnchorType>, CGFloat, CGFloat)) -> NSLayoutConstraint {
    if let lhs = lhs as? NSLayoutDimension,
        let rhsAnchor = rhs.0 as? NSLayoutDimension {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhsAnchor, multiplier: rhs.1, constant: rhs.2)
        constraint.isActive = true
        return constraint
    } else {
        let constraint = lhs.constraint(lessThanOrEqualTo: rhs.0, constant: rhs.2)
        constraint.isActive = true
        return constraint
    }
}

@discardableResult public func >=<AnchorType>(lhs: NSLayoutAnchor<AnchorType>, rhs: (NSLayoutAnchor<AnchorType>, CGFloat, CGFloat)) -> NSLayoutConstraint {
    if let lhs = lhs as? NSLayoutDimension,
        let rhsAnchor = rhs.0 as? NSLayoutDimension {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhsAnchor, multiplier: rhs.1, constant: rhs.2)
        constraint.isActive = true
        return constraint
    } else {
        let constraint = lhs.constraint(greaterThanOrEqualTo: rhs.0, constant: rhs.2)
        constraint.isActive = true
        return constraint
    }
}

@discardableResult public func ==(lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    let constraint = lhs.constraint(equalToConstant: rhs)
    constraint.isActive = true
    return constraint
}

@discardableResult public func <=(lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    let constraint = lhs.constraint(lessThanOrEqualToConstant: rhs)
    constraint.isActive = true
    return constraint
}

@discardableResult public func >=(lhs: NSLayoutDimension, rhs: CGFloat) -> NSLayoutConstraint {
    let constraint = lhs.constraint(greaterThanOrEqualToConstant: rhs)
    constraint.isActive = true
    return constraint
}
