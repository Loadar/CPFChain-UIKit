//
//  UILabel+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Base: UILabel {
    @discardableResult
    public func text(_ value: String?) -> Cpf {
        base.text = value
        return self
    }
    
    @discardableResult
    public func attributed(text: RichText) -> Cpf {
        base.attributedText = text.attributedText
        return self
    }
    
    @discardableResult
    public func attributed(text: Cpf<RichText>) -> Cpf {
        return self.attributed(text: text.base)
    }
    
    @discardableResult
    public func font(_ value: UIFont) -> Cpf {
        base.font = value
        return self
    }
    
    @discardableResult
    public func textColor(_ color: UIColor?, highlighted: Bool? = nil) -> Cpf {
        if let state = highlighted, state {
            base.highlightedTextColor = color
        } else {
            base.textColor = color
        }
        return self
    }
    
    @discardableResult
    public func textShadow(_ color: UIColor?, offset: CGSize?) -> Cpf {
        base.shadowColor = color
        if let shadowOffset = offset {
            base.shadowOffset = shadowOffset
        }
        return self
    }
    
    @discardableResult
    public func text(alignment: NSTextAlignment) -> Cpf {
        base.textAlignment = alignment
        return self
    }
    
    @discardableResult
    public func lineBreak(mode: NSLineBreakMode) -> Cpf {
        base.lineBreakMode = mode
        return self
    }
    
    @discardableResult
    public func enabled(_ value: Bool) -> Cpf {
        base.isEnabled = value
        return self
    }
    
    @discardableResult
    public func lines(number: Int) -> Cpf {
        base.numberOfLines = number
        return self
    }
    
    @discardableResult
    public func ajustFontSize(toFitWidth: Bool, minScale: CGFloat? = nil) -> Cpf {
        base.adjustsFontSizeToFitWidth = toFitWidth
        if toFitWidth, let scale = minScale {
            base.minimumScaleFactor = scale
        }
        return self
    }
    
    @discardableResult
    public func baseline(adjustment: UIBaselineAdjustment) -> Cpf {
        base.baselineAdjustment = adjustment
        return self
    }
}

