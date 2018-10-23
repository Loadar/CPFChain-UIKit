//
//  UIButton+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Base: UIButton {
    @discardableResult
    public func contentEdge(insets: UIEdgeInsets) -> Cpf {
        base.contentEdgeInsets = insets
        return self
    }
    
    @discardableResult
    public func titleEdge(insets: UIEdgeInsets) -> Cpf {
        base.titleEdgeInsets = insets
        return self
    }
    
    @discardableResult
    public func reversesTitleShadowWhenHighlighted(_ toReverse: Bool) -> Cpf {
        base.reversesTitleShadowWhenHighlighted = toReverse
        return self
    }
    
    @discardableResult
    public func imageEdge(insets: UIEdgeInsets) -> Cpf {
        base.imageEdgeInsets = insets
        return self
    }
    
    @discardableResult
    public func adjustImage(highlighted: Bool? = nil, disabled: Bool? = nil) -> Cpf {
        if let value = highlighted {
            base.adjustsImageWhenHighlighted = value
        }
        if let value = disabled {
            base.adjustsImageWhenDisabled = value
        }
        return self
    }
    
    @discardableResult
    public func showsTouchWhenHighlighted(_ showTouch: Bool) -> Cpf {
        base.showsTouchWhenHighlighted = showTouch
        return self
    }
    
    @discardableResult
    public func title(_ title: String?, state: UIControl.State = .normal) -> Cpf {
        base.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    public func titleColor(_ color: UIColor?, state: UIControl.State = .normal) -> Cpf {
        base.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    public func titleShadowColor(_ color: UIColor?, state: UIControl.State = .normal) -> Cpf {
        base.setTitleShadowColor(color, for: state)
        return self
    }
    
    @discardableResult
    public func image(_ image: UIImage?, state: UIControl.State = .normal) -> Cpf {
        base.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func imageContent(mode: UIView.ContentMode) -> Cpf {
        base.imageView?.contentMode = mode
        return self
    }
    
    
    @discardableResult
    public func background(image: UIImage?, state: UIControl.State = .normal) -> Cpf {
        base.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    public func attributed(title: RichText?, state: UIControl.State = .normal) -> Cpf {
        base.setAttributedTitle(title?.attributedText, for: state)
        return self
    }
    
    @discardableResult
    public func attributed(title: Cpf<RichText>, state:  UIControl.State = .normal) -> Cpf {
        return self.attributed(title: title.base, state: state)
    }
    
    @discardableResult
    public func font(_ font: UIFont) -> Cpf {
        base.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    public func text(alignment: NSTextAlignment) -> Cpf {
        base.titleLabel?.textAlignment = alignment
        switch alignment {
        case .left:
            base.contentHorizontalAlignment = .left
        case .right:
            base.contentHorizontalAlignment = .right
        case .center:
            base.contentHorizontalAlignment = .center
        default:
            break
        }
        return self
    }
}

