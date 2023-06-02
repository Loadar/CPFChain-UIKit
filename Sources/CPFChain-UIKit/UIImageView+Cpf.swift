//
//  UIImageView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

extension Cpf where Wrapped: UIImageView {
    @discardableResult
    public func image(_ image: UIImage?, state: UIControl.State? = nil) -> Cpf {
        if state == .highlighted {
            wrapped.highlightedImage = image
        } else {
            wrapped.image = image
        }
        return self
    }
    
    @discardableResult
    public func highlighted(_ value: Bool) -> Cpf {
        wrapped.isHighlighted = value
        return self
    }
    
    @discardableResult
    public func animationImages(_ images: [UIImage]?, highlightedImages: [UIImage]? = nil, duration: TimeInterval? = nil, repeatCount: Int? = nil) -> Cpf {
        wrapped.animationImages = images
        if let theImages = highlightedImages {
            wrapped.highlightedAnimationImages = theImages
        }
        if let animationDuration = duration {
            wrapped.animationDuration = animationDuration
        }
        if let animationRepeatCount = repeatCount {
            wrapped.animationRepeatCount = animationRepeatCount
        }
        return self
    }    
}
