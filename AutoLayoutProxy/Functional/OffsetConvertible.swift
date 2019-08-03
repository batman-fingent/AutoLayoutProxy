//
//  OffsetConvertible.swift
//  AutoLayoutProxy
//
//  Created by Bibin Jacob Pulickal on 01/08/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

public protocol OffsetConvertible {

    var horizontal: CGFloat { get }

    var vertical: CGFloat { get }
}

#if canImport(UIKit)
extension UIOffset: OffsetConvertible { }

#elseif canImport(Cocoa)

public struct NSOffset {

    public var horizontal: CGFloat

    public var vertical: CGFloat

    public static let zero = NSOffset()

    public init(horizontal: CGFloat, vertical: CGFloat) {
        self.horizontal = horizontal
        self.vertical   = vertical
    }

    public init(h horizontal: CGFloat = 0, v vertical: CGFloat = 0) {
        self.init(horizontal: horizontal, vertical: vertical)
    }
    public init(_ both: CGFloat) {
        self.init(horizontal: both, vertical: both)
    }
}

extension NSOffset: OffsetConvertible { }

#endif

extension CGFloat: OffsetConvertible {

    public var horizontal: CGFloat {
        return self
    }

    public var vertical: CGFloat {
        return self
    }
}

extension Double: OffsetConvertible {

    public var horizontal: CGFloat {
        return CGFloat(self)
    }

    public var vertical: CGFloat {
        return CGFloat(self)
    }
}

extension Int: OffsetConvertible {

    public var horizontal: CGFloat {
        return CGFloat(self)
    }

    public var vertical: CGFloat {
        return CGFloat(self)
    }
}
