//
//  AutoLayoutableQuadrupleOperators.swift
//  AutoLayoutProxy
//
//  Created by Frankenstein on 12/08/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//


public func ==(lhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor),
               rhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor)) {
    lhs.0.constraint(equalTo: rhs.0).isActive   = true
    lhs.1.constraint(equalTo: rhs.1).isActive   = true
    lhs.2.constraint(equalTo: rhs.2).isActive   = true
    lhs.3.constraint(equalTo: rhs.3).isActive   = true
}

public func <=(lhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor),
               rhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor)) {
    lhs.0.constraint(lessThanOrEqualTo: rhs.0).isActive   = true
    lhs.1.constraint(lessThanOrEqualTo: rhs.1).isActive   = true
    lhs.2.constraint(lessThanOrEqualTo: rhs.2).isActive   = true
    lhs.3.constraint(lessThanOrEqualTo: rhs.3).isActive   = true
}

public func >=(lhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor),
               rhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor)) {
    lhs.0.constraint(greaterThanOrEqualTo: rhs.0).isActive   = true
    lhs.1.constraint(greaterThanOrEqualTo: rhs.1).isActive   = true
    lhs.2.constraint(greaterThanOrEqualTo: rhs.2).isActive   = true
    lhs.3.constraint(greaterThanOrEqualTo: rhs.3).isActive   = true
}


public func +(lhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor),
              rhs: EdgeInsetConvertible)
    -> (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, EdgeInsetConvertible) {
        return (lhs.0, lhs.1, lhs.2, lhs.3, rhs)
}


public func ==(lhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor),
               rhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, EdgeInsetConvertible)) {
    lhs.0.constraint(equalTo: rhs.0, constant: rhs.4.top).isActive      = true
    lhs.1.constraint(equalTo: rhs.1, constant: rhs.4.left).isActive     = true
    lhs.2.constraint(equalTo: rhs.2, constant: rhs.4.bottom).isActive   = true
    lhs.3.constraint(equalTo: rhs.3, constant: rhs.4.right).isActive    = true
}

public func <=(lhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor),
               rhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, EdgeInsetConvertible)) {
    lhs.0.constraint(lessThanOrEqualTo: rhs.0, constant: rhs.4.top).isActive    = true
    lhs.1.constraint(lessThanOrEqualTo: rhs.1, constant: rhs.4.left).isActive   = true
    lhs.2.constraint(lessThanOrEqualTo: rhs.2, constant: rhs.4.bottom).isActive = true
    lhs.3.constraint(lessThanOrEqualTo: rhs.3, constant: rhs.4.right).isActive  = true
}

public func >=(lhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor),
               rhs: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, EdgeInsetConvertible)) {
    lhs.0.constraint(greaterThanOrEqualTo: rhs.0, constant: rhs.4.top).isActive     = true
    lhs.1.constraint(greaterThanOrEqualTo: rhs.1, constant: rhs.4.left).isActive    = true
    lhs.2.constraint(greaterThanOrEqualTo: rhs.2, constant: rhs.4.bottom).isActive  = true
    lhs.3.constraint(greaterThanOrEqualTo: rhs.3, constant: rhs.4.right).isActive   = true
}
