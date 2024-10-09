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
public extension Cpf where Wrapped: UIScrollView {
    @discardableResult
    func content(offset: CGPoint, animated: Bool = false) -> Cpf {
        if animated {
            wrapped.setContentOffset(offset, animated: animated)
        } else {
            wrapped.contentOffset = offset
        }
        return self
    }
    
    @discardableResult
    func content(size: CGSize) -> Cpf {
        wrapped.contentSize = size
        return self
    }
    
    @discardableResult
    func content(insets: UIEdgeInsets) -> Cpf {
        wrapped.contentInset = insets
        return self
    }
    
    @discardableResult
    func contentInsetAdjust(behavior: UIScrollView.ContentInsetAdjustmentBehavior) -> Cpf {
        wrapped.contentInsetAdjustmentBehavior = behavior
        return self
    }
    
    @available(*, deprecated, message: "请使用contentInsetAdjust来指定behavior，界面布局应考虑安全区域适配")
    @discardableResult
    func disableInsetAdjust(_ toDisable: Bool) -> Cpf {
        return self.contentInsetAdjust(behavior: .never)
    }
    
    @discardableResult
    func delegate(_ delegate: UIScrollViewDelegate?) -> Cpf {
        wrapped.delegate = delegate
        return self
    }
    
    @discardableResult
    func directionLock(enabled: Bool) -> Cpf {
        wrapped.isDirectionalLockEnabled = enabled
        return self
    }
    
    @discardableResult
    func bounces(_ allowBounce: Bool) -> Cpf {
        wrapped.bounces = allowBounce
        return self
    }
    
    @discardableResult
    func alwaysBounce(horizontal: Bool? = nil, vertical: Bool? = nil) -> Cpf {
        if let bounce = vertical {
            wrapped.alwaysBounceVertical = bounce
        }
        if let bounce = horizontal {
            wrapped.alwaysBounceHorizontal = bounce
        }
        return self
    }
    
    @discardableResult
    func paging(enabled: Bool) -> Cpf {
        wrapped.isPagingEnabled = enabled
        return self
    }
    
    @discardableResult
    func scroll(enabled: Bool) -> Cpf {
        wrapped.isScrollEnabled = enabled
        return self
    }
    
    @discardableResult
    func showScrollIndicator(horizontal: Bool? = nil, vertical: Bool? = nil) -> Cpf {
        if let showIndicator = horizontal {
            wrapped.showsHorizontalScrollIndicator = showIndicator
        }
        if let showIndicator = vertical {
            wrapped.showsVerticalScrollIndicator = showIndicator
        }
        return self
    }
    
    @discardableResult
    func indicator(insets: UIEdgeInsets?, style: UIScrollView.IndicatorStyle? = nil) -> Cpf {
        if let theInsets = insets {
            wrapped.scrollIndicatorInsets = theInsets
        }
        if let theStyle = style {
            wrapped.indicatorStyle = theStyle
        }
        return self
    }
    
    @discardableResult
    func deceleration(rate: CGFloat) -> Cpf {
        wrapped.decelerationRate = UIScrollView.DecelerationRate(rawValue: rate)
        return self
    }
    
    @discardableResult
    func indexDisplay(mode: UIScrollView.IndexDisplayMode) -> Cpf {
        wrapped.indexDisplayMode = mode
        return self
    }
    
    @discardableResult
    func delaysContentTouches(_ toDelay: Bool) -> Cpf {
        wrapped.delaysContentTouches = toDelay
        return self
    }
    
    @discardableResult
    func cancelTouches(enabled: Bool) -> Cpf {
        wrapped.canCancelContentTouches = enabled
        return self
    }
    
    @discardableResult
    func zoomScale(min: CGFloat? = nil, max: CGFloat? = nil) -> Cpf {
        if let zoomScale = min {
            wrapped.minimumZoomScale = zoomScale
        }
        if let zoomScale = max {
            wrapped.maximumZoomScale = zoomScale
        }
        return self
    }
    
    @discardableResult
    func zoomScale(to scale: CGFloat, animated: Bool = false) -> Cpf {
        if animated {
            wrapped.setZoomScale(scale, animated: animated)
        } else {
            wrapped.zoomScale = scale
        }
        return self
    }
    
    @discardableResult
    func bounces(zoom toBounce: Bool) -> Cpf {
        wrapped.bouncesZoom = toBounce
        return self
    }
    
    @discardableResult
    func scrollsToTop(_ value: Bool) -> Cpf {
        wrapped.scrollsToTop = value
        return self
    }
    
    @discardableResult
    func keyboardDismiss(mode: UIScrollView.KeyboardDismissMode) -> Cpf {
        wrapped.keyboardDismissMode = mode
        return self
    }
    
    @discardableResult
    func refresh(control: UIRefreshControl) -> Cpf {
        wrapped.refreshControl = control
        return self
    }
}
