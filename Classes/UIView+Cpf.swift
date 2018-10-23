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
public extension Cpf where Base: UIView {
    @discardableResult
    public func userInteraction(enabled: Bool) -> Cpf {
        base.isUserInteractionEnabled = enabled
        return self
    }
    
    @discardableResult
    public func tag(_ tag: Int) -> Cpf {
        base.tag = tag
        return self
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    public func semanticContent(attribute: UISemanticContentAttribute) -> Cpf {
        base.semanticContentAttribute = attribute
        return self
    }
    
    @discardableResult
    public func frame(_ frame: CGRect) -> Cpf {
        base.frame = frame
        return self
    }
    
    @discardableResult
    public func bounds(_ bounds: CGRect) -> Cpf {
        base.bounds = bounds
        return self
    }
    
    @discardableResult
    public func center(_ center: CGPoint) -> Cpf {
        base.center = center
        return self
    }
    
    @discardableResult
    public func transform(_ transform: CGAffineTransform) -> Cpf {
        base.transform = transform
        return self
    }
    
    @discardableResult
    public func contentScale(factor: CGFloat) -> Cpf {
        base.contentScaleFactor = factor
        return self
    }
    
    @discardableResult
    public func isMultipleTouch(enabled: Bool) -> Cpf {
        base.isMultipleTouchEnabled = enabled
        return self
    }
    
    @discardableResult
    public func isExclusiveTouch(_ value: Bool) -> Cpf {
        base.isExclusiveTouch = value
        return self
    }
    
    @discardableResult
    public func autoResizesSubViews(_ value: Bool) -> Cpf {
        base.autoresizesSubviews = value
        return self
    }
    
    @discardableResult
    public func autoResizing(mask: UIView.AutoresizingMask) -> Cpf {
        base.autoresizingMask = mask
        return self
    }
    
    @discardableResult
    public func clipsToBounds(_ value: Bool) -> Cpf {
        base.clipsToBounds = value
        return self
    }
    
    @discardableResult
    public func background(color: UIColor?) -> Cpf {
        base.backgroundColor = color
        return self
    }
    
    @discardableResult
    public func alpha(_ value: CGFloat) -> Cpf {
        base.alpha = value
        return self
    }
    
    @discardableResult
    public func opaque(_ value: Bool) -> Cpf {
        base.isOpaque = value
        return self
    }
    
    @discardableResult
    public func hidden(_ value: Bool) -> Cpf {
        base.isHidden = value
        return self
    }
    
    @discardableResult
    public func content(mode: UIView.ContentMode) -> Cpf {
        base.contentMode = mode
        return self
    }
    
    @discardableResult
    public func mask(view: UIView?) -> Cpf {
        base.mask = view
        return self
    }
    
    @discardableResult
    public func tint(color: UIColor?, ajust mode: UIView.TintAdjustmentMode? = nil) -> Cpf {
        if let tintColor = color {
            base.tintColor = tintColor
        }
        if let adjustMode = mode {
            base.tintAdjustmentMode = adjustMode
        }
        return self
    }
    
    @discardableResult
    public func autoResizingMaskToConstraints(enabled: Bool) -> Cpf {
        base.translatesAutoresizingMaskIntoConstraints = enabled
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult
    public func layout(margins: UIEdgeInsets) -> Cpf {
        base.layoutMargins = margins
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func directionalLayout(margins: NSDirectionalEdgeInsets) -> Cpf {
        base.directionalLayoutMargins = margins
        return self
    }
    
    @available(iOS 8.0, *)
    @discardableResult
    public func preservesSuperviewLayoutMargins(_ value: Bool) -> Cpf {
        base.preservesSuperviewLayoutMargins = value
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func insetsLayoutMarginsFromSafeArea(_ value: Bool) -> Cpf {
        base.insetsLayoutMarginsFromSafeArea = value
        return self
    }
    
    @discardableResult
    public func clearsContextBeforeDrawing(_ value: Bool) -> Cpf {
        base.clearsContextBeforeDrawing = value
        return self
    }
}

// MARK: - Sub Views
public extension Cpf where Base: UIView {
    @discardableResult
    public func add(_ view: UIView) -> Cpf {
        base.addSubview(view)
        return self
    }
    
    @discardableResult
    public func add<T: UIView>(_ container: Cpf<T>) -> Cpf {
        base.addSubview(container.base)
        return self
    }
    
    @discardableResult
    public func insert(_ view: UIView, at index: Int) -> Cpf {
        base.insertSubview(view, at: index)
        return self
    }
    
    @discardableResult
    public func insert(_ view: UIView, below subview: UIView) -> Cpf {
        base.insertSubview(view, belowSubview: subview)
        return self
    }
    
    @discardableResult
    public func insert(_ view: UIView, above subview: UIView) -> Cpf {
        base.insertSubview(view, aboveSubview: subview)
        return self
    }
}

// MARK: - Gestures
public extension Cpf where Base: UIView {
    @discardableResult
    public func add(gestureRecognizer: GestureRecognizer) -> Cpf {
        base.addGestureRecognizer(gestureRecognizer.recognizer)
        return self
    }
}

// MARK: - Layer
public extension Cpf where Base: UIView {
    @discardableResult
    public func corner(radius: CGFloat) -> Cpf {
        base.layer.cpf.corner(radius: radius)
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func corner(radius: CGFloat, mask: CACornerMask) -> Cpf {
        base.layer.cpf.corner(radius: radius, mask: mask)
        return self
    }
    
    @discardableResult
    public func border(width: CGFloat, color: UIColor? = nil) -> Cpf {
        base.layer.cpf.border(width: width, color: color)
        return self
    }
    
    @discardableResult
    public func shadow(color: UIColor?, opacity: CGFloat = 1.0, offset: CGSize = .zero, radius: CGFloat = 3.0, path: UIBezierPath? = nil) -> Cpf {
        base.layer.cpf.shadow(color: color, opacity: opacity, offset: offset, radius: radius, path: path)
        return self
    }
}

