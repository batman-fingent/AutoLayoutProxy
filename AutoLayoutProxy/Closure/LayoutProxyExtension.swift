//
//  LayoutProxyExtension.swift
//  AutoLayoutProxy
//
//  Created by Bibin Jacob Pulickal on 22/01/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import Foundation

public extension LayoutProxy {

    func fillSuperView(inset: UIEdgeInsets = .zero) {
        fillView(superView, inset: inset)
    }

    func fillView(_ view: UIView, inset: UIEdgeInsets = .zero) {
        anchorAllExcept([], inset: inset, to: view)
    }

    func alignCentersToSuperView(inset: UIEdgeInsets = .zero) {
        alignCenters(inset: inset, to: superView)
    }

    func alignCenters(inset: UIEdgeInsets = .zero, to view: UIView) {
        addAnchors([.centerX, .centerY], inset: inset, to: view)
    }

    func anchorAllSidesExcept(
        _ exemptedSides: Set<NSLayoutConstraint.Attribute>,
        inset: UIEdgeInsets = .zero) {
        anchorAllSidesExcept(exemptedSides, inset: inset, to: superView)
    }

    func anchorAllSidesExcept(
        _ exemptedSides: Set<NSLayoutConstraint.Attribute>,
        inset: UIEdgeInsets = .zero,
        to view: UIView) {
        var attributes: Set<NSLayoutConstraint.Attribute> = [.top, .bottom, .leading, .trailing]
        attributes.subtract(exemptedSides)
        addAnchors(attributes, inset: inset, to: view)
    }

    func anchorAllExcept(
        _ exemptedAnchors: Set<NSLayoutConstraint.Attribute>,
        inset: UIEdgeInsets = .zero) {
        anchorAllExcept(exemptedAnchors, inset: inset, to: superView)
    }

    func anchorAllExcept(
        _ exemptedAnchors: Set<NSLayoutConstraint.Attribute>,
        inset: UIEdgeInsets = .zero,
        to view: UIView) {
        var attributes: Set<NSLayoutConstraint.Attribute> =
            [.top, .bottom, .leading, .trailing, .centerX, .centerY, .width, .height]
        attributes.subtract(exemptedAnchors)
        addAnchors(attributes, inset: inset, to: view)
    }

    func addAnchors(
        _ anchors: Set<NSLayoutConstraint.Attribute>,
        inset: UIEdgeInsets = .zero, offset: UIOffset = .zero) {
        addAnchors(anchors, inset: inset, offset: offset, to: superView)
    }

    func addAnchors(
        _ anchors: Set<NSLayoutConstraint.Attribute>,
        inset: UIEdgeInsets = .zero,
        offset: UIOffset = .zero,
        to view: UIView) {
        if anchors.contains(.top) {
            top == view.topAnchor + inset.top
        }
        if anchors.contains(.bottom) {
            bottom == view.bottomAnchor + inset.bottom
        }
        if anchors.contains(.leading) || anchors.contains(.left) {
            left == view.leadingAnchor + inset.left
        }
        if anchors.contains(.trailing) || anchors.contains(.right) {
            right == view.trailingAnchor + inset.right
        }
        if anchors.contains(.centerX) {
            centerX == view.centerXAnchor + offset.horizontal
        }
        if anchors.contains(.centerY) {
            centerY == view.centerYAnchor + offset.vertical
        }
        if anchors.contains(.width) {
            width == view.widthAnchor
        }
        if anchors.contains(.height) {
            height == view.heightAnchor
        }
    }
}
