//
//  UIEdgeInsetsExtension.swift
//  AutoLayoutProxy
//
//  Created by Bibin Jacob Pulickal on 06/09/18.
//  Copyright © 2018 Bibin Jacob Pulickal. All rights reserved.
//

public extension Set where Element == NSLayoutConstraint.Attribute {
    
    static var allSides: Set<NSLayoutConstraint.Attribute> {
        return [.top, .left, .bottom, .right]
    }

    static var horizontal: Set<NSLayoutConstraint.Attribute> {
        return [.left, .right]
    }

    static var vertical: Set<NSLayoutConstraint.Attribute> {
        return [.top, .bottom]
    }
    
    static var bothCenters: Set<NSLayoutConstraint.Attribute> {
        return [.centerX, .centerY]
    }
    
    static var bothDimensions: Set<NSLayoutConstraint.Attribute> {
        return [.width, .height]
    }
}

public extension UIEdgeInsets {
    init(t: CGFloat = 0, l: CGFloat = 0, b: CGFloat = 0, r: CGFloat = 0) {
        self.init(top: t, left: l, bottom: b, right: r)
    }
    init(_ all: CGFloat) {
        self.init(top: all, left: all, bottom: -all, right: -all)
    }
    init(horizontal: CGFloat = 0, vertical: CGFloat = 0) {
        self.init(top: vertical, left: horizontal, bottom: -vertical, right: -horizontal)
    }
}

public extension UIOffset {
    init(h: CGFloat = 0, v: CGFloat = 0) {
        self.init(horizontal: h, vertical: v)
    }
    init(_ both: CGFloat) {
        self.init(horizontal: both, vertical: both)
    }
}

public extension CGSize {
    init(w: CGFloat = 0, h: CGFloat = 0) {
        self.init(width: w, height: h)
    }
    init(_ both: CGFloat) {
        self.init(width: both, height: both)
    }
}
