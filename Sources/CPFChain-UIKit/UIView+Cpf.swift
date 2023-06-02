//
//  UIView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

// MARK: - Attributes
public extension Cpf where Wrapped: UIView {
    @discardableResult
    func userInteraction(enabled: Bool) -> Cpf {
        wrapped.isUserInteractionEnabled = enabled
        return self
    }
    
    @discardableResult
    func tag(_ tag: Int) -> Cpf {
        wrapped.tag = tag
        return self
    }
    
    @discardableResult
    func semanticContent(attribute: UISemanticContentAttribute) -> Cpf {
        wrapped.semanticContentAttribute = attribute
        return self
    }
    
    @discardableResult
    func frame(_ frame: CGRect) -> Cpf {
        wrapped.frame = frame
        return self
    }
    
    @discardableResult
    func bounds(_ bounds: CGRect) -> Cpf {
        wrapped.bounds = bounds
        return self
    }
    
    @discardableResult
    func center(_ center: CGPoint) -> Cpf {
        wrapped.center = center
        return self
    }
    
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> Cpf {
        wrapped.transform = transform
        return self
    }
    
    @discardableResult
    func contentScale(factor: CGFloat) -> Cpf {
        wrapped.contentScaleFactor = factor
        return self
    }
    
    @discardableResult
    func isMultipleTouch(enabled: Bool) -> Cpf {
        wrapped.isMultipleTouchEnabled = enabled
        return self
    }
    
    @discardableResult
    func isExclusiveTouch(_ value: Bool) -> Cpf {
        wrapped.isExclusiveTouch = value
        return self
    }
    
    @discardableResult
    func autoResizesSubViews(_ value: Bool) -> Cpf {
        wrapped.autoresizesSubviews = value
        return self
    }
    
    @discardableResult
    func autoResizing(mask: UIView.AutoresizingMask) -> Cpf {
        wrapped.autoresizingMask = mask
        return self
    }
    
    @discardableResult
    func clipsToBounds(_ value: Bool) -> Cpf {
        wrapped.clipsToBounds = value
        return self
    }
    
    @discardableResult
    func background(color: UIColor?) -> Cpf {
        wrapped.backgroundColor = color
        return self
    }
    
    @discardableResult
    func alpha(_ value: CGFloat) -> Cpf {
        wrapped.alpha = value
        return self
    }
    
    @discardableResult
    func opaque(_ value: Bool) -> Cpf {
        wrapped.isOpaque = value
        return self
    }
    
    @discardableResult
    func hidden(_ value: Bool) -> Cpf {
        wrapped.isHidden = value
        return self
    }
    
    @discardableResult
    func content(mode: UIView.ContentMode) -> Cpf {
        wrapped.contentMode = mode
        return self
    }
    
    @discardableResult
    func mask(view: UIView?) -> Cpf {
        wrapped.mask = view
        return self
    }
    
    @discardableResult
    func tint(color: UIColor?, ajust mode: UIView.TintAdjustmentMode? = nil) -> Cpf {
        if let tintColor = color {
            wrapped.tintColor = tintColor
        }
        if let adjustMode = mode {
            wrapped.tintAdjustmentMode = adjustMode
        }
        return self
    }
    
    @discardableResult
    func autoResizingMaskToConstraints(enabled: Bool) -> Cpf {
        wrapped.translatesAutoresizingMaskIntoConstraints = enabled
        return self
    }
    
    @discardableResult
    func layout(margins: UIEdgeInsets) -> Cpf {
        wrapped.layoutMargins = margins
        return self
    }
    
    @discardableResult
    func directionalLayout(margins: NSDirectionalEdgeInsets) -> Cpf {
        wrapped.directionalLayoutMargins = margins
        return self
    }
    
    @discardableResult
    func preservesSuperviewLayoutMargins(_ value: Bool) -> Cpf {
        wrapped.preservesSuperviewLayoutMargins = value
        return self
    }
    
    @discardableResult
    func insetsLayoutMarginsFromSafeArea(_ value: Bool) -> Cpf {
        wrapped.insetsLayoutMarginsFromSafeArea = value
        return self
    }
    
    @discardableResult
    func clearsContextBeforeDrawing(_ value: Bool) -> Cpf {
        wrapped.clearsContextBeforeDrawing = value
        return self
    }
}

// MARK: - Sub Views
public extension Cpf where Wrapped: UIView {
    @discardableResult
    func add(_ view: UIView) -> Cpf {
        wrapped.addSubview(view)
        return self
    }
    
    @discardableResult
    func add<T: UIView>(_ container: Cpf<T>) -> Cpf {
        wrapped.addSubview(container.wrapped)
        return self
    }
    
    @discardableResult
    func insert(_ view: UIView, at index: Int) -> Cpf {
        wrapped.insertSubview(view, at: index)
        return self
    }
    
    @discardableResult
    func insert(_ view: UIView, below subview: UIView) -> Cpf {
        wrapped.insertSubview(view, belowSubview: subview)
        return self
    }
    
    @discardableResult
    func insert(_ view: UIView, above subview: UIView) -> Cpf {
        wrapped.insertSubview(view, aboveSubview: subview)
        return self
    }
}

// MARK: - Layer
public extension Cpf where Wrapped: UIView {
    @discardableResult
    func corner(radius: CGFloat) -> Cpf {
        wrapped.layer.cpf.corner(radius: radius)
        return self
    }
    
    @discardableResult
    func corner(radius: CGFloat, mask: CACornerMask) -> Cpf {
        wrapped.layer.cpf.corner(radius: radius, mask: mask)
        return self
    }
    
    @discardableResult
    func border(width: CGFloat, color: UIColor? = nil) -> Cpf {
        wrapped.layer.cpf.border(width: width, color: color)
        return self
    }
    
    @discardableResult
    func shadow(color: UIColor?, opacity: CGFloat = 1.0, offset: CGSize = .zero, radius: CGFloat = 3.0, path: UIBezierPath? = nil) -> Cpf {
        wrapped.layer.cpf.shadow(color: color, opacity: opacity, offset: offset, radius: radius, path: path)
        return self
    }
}

