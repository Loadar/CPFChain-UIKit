//
//  UIButton+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Wrapped: UIButton {
    @discardableResult
    func contentEdge(insets: UIEdgeInsets) -> Cpf {
        wrapped.contentEdgeInsets = insets
        return self
    }
    
    @discardableResult
    func titleEdge(insets: UIEdgeInsets) -> Cpf {
        wrapped.titleEdgeInsets = insets
        return self
    }
    
    @discardableResult
    func reversesTitleShadowWhenHighlighted(_ toReverse: Bool) -> Cpf {
        wrapped.reversesTitleShadowWhenHighlighted = toReverse
        return self
    }
    
    @discardableResult
    func imageEdge(insets: UIEdgeInsets) -> Cpf {
        wrapped.imageEdgeInsets = insets
        return self
    }
    
    @discardableResult
    func adjustImage(highlighted: Bool? = nil, disabled: Bool? = nil) -> Cpf {
        if let value = highlighted {
            wrapped.adjustsImageWhenHighlighted = value
        }
        if let value = disabled {
            wrapped.adjustsImageWhenDisabled = value
        }
        return self
    }
    
    @discardableResult
    func showsTouchWhenHighlighted(_ showTouch: Bool) -> Cpf {
        wrapped.showsTouchWhenHighlighted = showTouch
        return self
    }
    
    @discardableResult
    func title(_ title: String?, state: UIControl.State = .normal) -> Cpf {
        wrapped.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func titleColor(_ color: UIColor?, state: UIControl.State = .normal) -> Cpf {
        wrapped.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func titleShadowColor(_ color: UIColor?, state: UIControl.State = .normal) -> Cpf {
        wrapped.setTitleShadowColor(color, for: state)
        return self
    }
    
    @discardableResult
    func image(_ image: UIImage?, state: UIControl.State = .normal) -> Cpf {
        wrapped.setImage(image, for: state)
        return self
    }
    
    @discardableResult
    func imageContent(mode: UIView.ContentMode) -> Cpf {
        wrapped.imageView?.contentMode = mode
        return self
    }
    
    
    @discardableResult
    func background(image: UIImage?, state: UIControl.State = .normal) -> Cpf {
        wrapped.setBackgroundImage(image, for: state)
        return self
    }
    
    @discardableResult
    func attributed(title: RichText?, state: UIControl.State = .normal) -> Cpf {
        wrapped.setAttributedTitle(title?.attributedText, for: state)
        return self
    }
    
    @discardableResult
    func attributed(title: Cpf<RichText>, state:  UIControl.State = .normal) -> Cpf {
        return self.attributed(title: title.wrapped, state: state)
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Cpf {
        wrapped.titleLabel?.font = font
        return self
    }
    
    @discardableResult
    func text(alignment: NSTextAlignment) -> Cpf {
        wrapped.titleLabel?.textAlignment = alignment
        switch alignment {
        case .left:
            wrapped.contentHorizontalAlignment = .left
        case .right:
            wrapped.contentHorizontalAlignment = .right
        case .center:
            wrapped.contentHorizontalAlignment = .center
        default:
            break
        }
        return self
    }
}
