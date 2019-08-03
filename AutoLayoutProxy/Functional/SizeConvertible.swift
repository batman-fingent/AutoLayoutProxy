//
//  SizeConvertible.swift
//  AutoLayoutProxy
//
//  Created by Bibin Jacob Pulickal on 01/08/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

public protocol SizeConvertible {

    var width: CGFloat { get }

    var height: CGFloat { get }
}

extension CGSize: SizeConvertible { }

extension CGFloat: SizeConvertible {

    public var width: CGFloat {
        return self
    }

    public var height: CGFloat {
        return self
    }
}

extension Int: SizeConvertible {

    public var width: CGFloat {
        return CGFloat(self)
    }

    public var height: CGFloat {
        return CGFloat(self)
    }
}
