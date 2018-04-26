//
//  UITextView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Base: UITextView {
    @discardableResult
    public func delegate(_ delegate: UITextViewDelegate?) -> Cpf {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    public func text(_ text: String?) -> Cpf {
        base.text = text
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont?) -> Cpf {
        base.font = font
        return self
    }
    
    @discardableResult
    public func textColor(_ color: UIColor?) -> Cpf {
        base.textColor = color
        return self
    }
    
    @discardableResult
    public func text(alignment: NSTextAlignment) -> Cpf {
        base.textAlignment = alignment
        return self
    }
    
    @discardableResult
    public func selected(range: NSRange) -> Cpf {
        base.selectedRange = range
        return self
    }
    
    @discardableResult
    public func editable(_ enable: Bool) -> Cpf {
        base.isEditable = enable
        return self
    }
    
    @discardableResult
    public func selectable(_ enable: Bool) -> Cpf {
        base.isSelectable = enable
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
    public func textContainer(insets: UIEdgeInsets, padding: CGFloat? = nil) -> Cpf {
        base.textContainerInset = insets
        if let linePadding = padding {
            base.textContainer.lineFragmentPadding = linePadding
        }
        return self
    }
    
    @discardableResult
    public func input(view: UIView?, accessoryView: UIView?) -> Cpf {
        base.inputView = view
        base.inputAccessoryView = accessoryView
        return self
    }

}

