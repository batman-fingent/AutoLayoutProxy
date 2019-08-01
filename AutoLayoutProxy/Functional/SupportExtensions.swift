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
    init(t top: CGFloat = 0, l left: CGFloat = 0, b bottom: CGFloat = 0, r right: CGFloat = 0) {
        self.init(top: top, left: left, bottom: bottom, right: right)
    }
    init(_ all: CGFloat) {
        self.init(top: all, left: all, bottom: -all, right: -all)
    }
    init(h horizontal: CGFloat = 0, v vertical: CGFloat = 0) {
        self.init(top: vertical, left: horizontal, bottom: -vertical, right: -horizontal)
    }
}

public extension UIOffset {
    init(h horizontal: CGFloat = 0, v vertical: CGFloat = 0) {
        self.init(horizontal: horizontal, vertical: vertical)
    }
    init(_ both: CGFloat) {
        self.init(horizontal: both, vertical: both)
    }
}

public extension CGSize {
    init(w width: CGFloat = 0, h height: CGFloat = 0) {
        self.init(width: width, height: height)
    }
    init(_ both: CGFloat) {
        self.init(width: both, height: both)
    }
}
