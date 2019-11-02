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

extension NSOffset: OffsetConvertible { }

#endif

extension CGFloat: OffsetConvertible {

    public var horizontal: CGFloat { self }

    public var vertical: CGFloat { self }
}

extension Double: OffsetConvertible {

    public var horizontal: CGFloat { CGFloat(self) }

    public var vertical: CGFloat { CGFloat(self) }
}

extension Int: OffsetConvertible {

    public var horizontal: CGFloat { CGFloat(self) }

    public var vertical: CGFloat { CGFloat(self) }
}
