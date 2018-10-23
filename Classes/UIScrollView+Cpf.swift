//
//  UIScrollView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

// MARK: - UIScrollView
public extension Cpf where Base: UIScrollView {
    @discardableResult
    public func content(offset: CGPoint, animated: Bool = false) -> Cpf {
        if animated {
            base.setContentOffset(offset, animated: animated)
        } else {
            base.contentOffset = offset
        }
        return self
    }
    
    @discardableResult
    public func content(size: CGSize) -> Cpf {
        base.contentSize = size
        return self
    }
    
    @discardableResult
    public func content(insets: UIEdgeInsets) -> Cpf {
        base.contentInset = insets
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func contentInsetAdjust(behavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Cpf {
        base.contentInsetAdjustmentBehavior = behavior
        return self
    }
    
    @discardableResult
    public func disableInsetAdjust(_ toDisable: Bool) -> Cpf {
        if #available(iOS 11.0, *) {
            return self.contentInsetAdjust(behavior: .never)
        }
        return self
    }
    
    @discardableResult
    public func delegate(_ delegate: UIScrollViewDelegate?) -> Cpf {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    public func directionLock(enabled: Bool) -> Cpf {
        base.isDirectionalLockEnabled = enabled
        return self
    }
    
    @discardableResult
    public func bounces(_ allowBounce: Bool) -> Cpf {
        base.bounces = allowBounce
        return self
    }
    
    @discardableResult
    public func alwaysBounce(horizontal: Bool? = nil, vertical: Bool? = nil) -> Cpf {
        if let bounce = vertical {
            base.alwaysBounceVertical = bounce
        }
        if let bounce = horizontal {
            base.alwaysBounceHorizontal = bounce
        }
        return self
    }
    
    @discardableResult
    public func paging(enabled: Bool) -> Cpf {
        base.isPagingEnabled = enabled
        return self
    }
    
    @discardableResult
    public func scroll(enabled: Bool) -> Cpf {
        base.isScrollEnabled = enabled
        return self
    }
    
    @discardableResult
    public func showScrollIndicator(horizontal: Bool? = nil, vertical: Bool? = nil) -> Cpf {
        if let showIndicator = horizontal {
            base.showsHorizontalScrollIndicator = showIndicator
        }
        if let showIndicator = vertical {
            base.showsVerticalScrollIndicator = showIndicator
        }
        return self
    }
    
    @discardableResult
    public func indicator(insets: UIEdgeInsets?, style: UIScrollView.IndicatorStyle? = nil) -> Cpf {
        if let theInsets = insets {
            base.scrollIndicatorInsets = theInsets
        }
        if let theStyle = style {
            base.indicatorStyle = theStyle
        }
        return self
    }
    
    @discardableResult
    public func deceleration(rate: CGFloat) -> Cpf {
        base.decelerationRate = UIScrollView.DecelerationRate(rawValue: rate)
        return self
    }
    
    @discardableResult
    public func indexDisplay(mode: UIScrollView.IndexDisplayMode) -> Cpf {
        base.indexDisplayMode = mode
        return self
    }
    
    @discardableResult
    public func delaysContentTouches(_ toDelay: Bool) -> Cpf {
        base.delaysContentTouches = toDelay
        return self
    }
    
    @discardableResult
    public func cancelTouches(enabled: Bool) -> Cpf {
        base.canCancelContentTouches = enabled
        return self
    }
    
    @discardableResult
    public func zoomScale(min: CGFloat? = nil, max: CGFloat? = nil) -> Cpf {
        if let zoomScale = min {
            base.minimumZoomScale = zoomScale
        }
        if let zoomScale = max {
            base.maximumZoomScale = zoomScale
        }
        return self
    }
    
    @discardableResult
    public func zoomScale(to scale: CGFloat, animated: Bool = false) -> Cpf {
        if animated {
            base.setZoomScale(scale, animated: animated)
        } else {
            base.zoomScale = scale
        }
        return self
    }
    
    @discardableResult
    public func bounces(zoom toBounce: Bool) -> Cpf {
        base.bouncesZoom = toBounce
        return self
    }
    
    @discardableResult
    public func scrollsToTop(_ value: Bool) -> Cpf {
        base.scrollsToTop = value
        return self
    }
    
    @discardableResult
    public func keyboardDismiss(mode: UIScrollView.KeyboardDismissMode) -> Cpf {
        base.keyboardDismissMode = mode
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    public func refresh(control: UIRefreshControl) -> Cpf {
        base.refreshControl = control
        return self
    }
}

