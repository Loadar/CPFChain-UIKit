//
//  UIControl+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Base: UIControl {
    @discardableResult
    public func enabled(_ value: Bool) -> Cpf {
        base.isEnabled = value
        return self
    }
    
    @discardableResult
    public func selected(_ value: Bool) -> Cpf {
        base.isSelected = value
        return self
    }
    
    @discardableResult
    public func highlighted(_ value: Bool) -> Cpf {
        base.isHighlighted = value
        return self
    }
    
    @discardableResult
    public func contentAlignment(vertical: UIControl.ContentVerticalAlignment?, horizontal: UIControl.ContentHorizontalAlignment?) -> Cpf {
        if let alignment = vertical {
            base.contentVerticalAlignment = alignment
        }
        if let alignment = horizontal {
            base.contentHorizontalAlignment = alignment
        }
        return self
    }
    
    /// 默认event是touchUpInside
    @discardableResult
    public func action(_ action: Selector, to target: Any?, event: UIControl.Event = .touchUpInside) -> Cpf {
        base.addTarget(target, action: action, for: event)
        return self
    }
}

