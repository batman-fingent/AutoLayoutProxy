//
//  AutoLayoutableAnchorHelper.swift
//  AutoLayoutProxy
//
//  Created by Bibin Jacob Pulickal on 05/08/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

public extension AutoLayoutable {

    var leading: NSLayoutXAxisAnchor {
        return leadingAnchor
    }

    var trailing: NSLayoutXAxisAnchor {
        return trailingAnchor
    }

    var left: NSLayoutXAxisAnchor {
        return leftAnchor
    }

    var right: NSLayoutXAxisAnchor {
        return rightAnchor
    }

    var top: NSLayoutYAxisAnchor {
        return topAnchor
    }

    var bottom: NSLayoutYAxisAnchor {
        return bottomAnchor
    }

    var width: NSLayoutDimension {
        return widthAnchor
    }

    var height: NSLayoutDimension {
        return heightAnchor
    }

    var centerX: NSLayoutXAxisAnchor {
        return centerXAnchor
    }

    var centerY: NSLayoutYAxisAnchor {
        return centerYAnchor
    }

    var size: (NSLayoutDimension, NSLayoutDimension) {
        return (widthAnchor, heightAnchor)
    }

    var centers: (NSLayoutXAxisAnchor, NSLayoutYAxisAnchor) {
        return (centerXAnchor, centerYAnchor)
    }

    var sides: (NSLayoutYAxisAnchor, NSLayoutXAxisAnchor, NSLayoutYAxisAnchor, NSLayoutXAxisAnchor) {
        return (topAnchor, leadingAnchor, bottomAnchor, trailingAnchor)
    }
}
