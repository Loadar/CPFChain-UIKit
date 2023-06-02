//
//  UIControl+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Wrapped: UIControl {
    @discardableResult
    func enabled(_ value: Bool) -> Cpf {
        wrapped.isEnabled = value
        return self
    }
    
    @discardableResult
    func selected(_ value: Bool) -> Cpf {
        wrapped.isSelected = value
        return self
    }
    
    @discardableResult
    func highlighted(_ value: Bool) -> Cpf {
        wrapped.isHighlighted = value
        return self
    }
    
    @discardableResult
    func contentAlignment(vertical: UIControl.ContentVerticalAlignment?, horizontal: UIControl.ContentHorizontalAlignment?) -> Cpf {
        if let alignment = vertical {
            wrapped.contentVerticalAlignment = alignment
        }
        if let alignment = horizontal {
            wrapped.contentHorizontalAlignment = alignment
        }
        return self
    }
    
    /// 默认event是touchUpInside
    @discardableResult
    func action(_ action: Selector, to target: Any?, event: UIControl.Event = .touchUpInside) -> Cpf {
        wrapped.addTarget(target, action: action, for: event)
        return self
    }
}
