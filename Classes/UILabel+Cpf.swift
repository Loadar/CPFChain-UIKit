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
    
    /// 一段文字同样的属性
    @discardableResult
    public func attributed(text: String?, attributes: [RichTextAttribute]) -> Cpf {
        let richText = RichText([RichTextItem(text: text, attributes: attributes)])
        return attributed(text: richText)
    }
    
    /// 一段文字不同range属性不同
    @discardableResult
    public func attributed(text: (String?, [RichTextAttribute])...) -> Cpf {
        let richText = RichText(text.map { RichTextItem(text: $0.0, attributes: $0.1) })
        return attributed(text: richText)
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

