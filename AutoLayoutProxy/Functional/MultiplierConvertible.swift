//
//  MultiplierConvertible.swift
//  AutoLayoutProxy
//
//  Created by Bibin Jacob Pulickal on 01/08/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

public protocol MultiplierConvertible {

    var multiplierValue: CGMultiplier { get }
}

extension CGMultiplier: MultiplierConvertible {

    public var multiplierValue: CGMultiplier {
        return self
    }
}

extension CGFloat: MultiplierConvertible {

    public var multiplierValue: CGMultiplier {
        return CGMultiplier(self)
    }
}

extension Int: MultiplierConvertible {

    public var multiplierValue: CGMultiplier {
        return CGMultiplier(CGFloat(self))
    }
}
