//
//  UIImageView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

extension Cpf where Base: UIImageView {
    @discardableResult
    public func image(_ image: UIImage?, state: UIControl.State? = nil) -> Cpf {
        if state == .highlighted {
            base.highlightedImage = image
        } else {
            base.image = image
        }
        return self
    }
    
    @discardableResult
    public func highlighted(_ value: Bool) -> Cpf {
        base.isHighlighted = value
        return self
    }
    
    @discardableResult
    public func animationImages(_ images: [UIImage]?, highlightedImages: [UIImage]? = nil, duration: TimeInterval? = nil, repeatCount: Int? = nil) -> Cpf {
        base.animationImages = images
        if let theImages = highlightedImages {
            base.highlightedAnimationImages = theImages
        }
        if let animationDuration = duration {
            base.animationDuration = animationDuration
        }
        if let animationRepeatCount = repeatCount {
            base.animationRepeatCount = animationRepeatCount
        }
        return self
    }    
}

