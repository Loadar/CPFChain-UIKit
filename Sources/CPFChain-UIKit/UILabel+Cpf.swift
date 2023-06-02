//
//  UILabel+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Wrapped: UILabel {
    @discardableResult
    func text(_ value: String?) -> Cpf {
        wrapped.text = value
        return self
    }
    
    
    @discardableResult
    func attributed(text: NSAttributedString) -> Cpf {
        wrapped.attributedText = text
        return self
    }

    @discardableResult
    func attributed(text: RichText) -> Cpf {
        attributed(text: text.attributedText)
    }
    
    @discardableResult
    func attributed(text: Cpf<RichText>) -> Cpf {
        attributed(text: text.wrapped)
    }
    
    @discardableResult
    func font(_ value: UIFont) -> Cpf {
        wrapped.font = value
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor?, highlighted: Bool? = nil) -> Cpf {
        if let state = highlighted, state {
            wrapped.highlightedTextColor = color
        } else {
            wrapped.textColor = color
        }
        return self
    }
    
    @discardableResult
    func textShadow(_ color: UIColor?, offset: CGSize?) -> Cpf {
        wrapped.shadowColor = color
        if let shadowOffset = offset {
            wrapped.shadowOffset = shadowOffset
        }
        return self
    }
    
    @discardableResult
    func text(alignment: NSTextAlignment) -> Cpf {
        wrapped.textAlignment = alignment
        return self
    }
    
    @discardableResult
    func lineBreak(mode: NSLineBreakMode) -> Cpf {
        wrapped.lineBreakMode = mode
        return self
    }
    
    @discardableResult
    func enabled(_ value: Bool) -> Cpf {
        wrapped.isEnabled = value
        return self
    }
    
    @discardableResult
    func lines(number: Int) -> Cpf {
        wrapped.numberOfLines = number
        return self
    }
    
    @discardableResult
    func ajustFontSize(toFitWidth: Bool, minScale: CGFloat? = nil) -> Cpf {
        wrapped.adjustsFontSizeToFitWidth = toFitWidth
        if toFitWidth, let scale = minScale {
            wrapped.minimumScaleFactor = scale
        }
        return self
    }
    
    @discardableResult
    func baseline(adjustment: UIBaselineAdjustment) -> Cpf {
        wrapped.baselineAdjustment = adjustment
        return self
    }
}
