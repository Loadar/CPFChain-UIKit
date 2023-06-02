//
//  UITextView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Wrapped: UITextView {
    @discardableResult
    func delegate(_ delegate: UITextViewDelegate?) -> Cpf {
        wrapped.delegate = delegate
        return self
    }
    
    @discardableResult
    func text(_ text: String?) -> Cpf {
        wrapped.text = text
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> Cpf {
        wrapped.font = font
        return self
    }
    
    @discardableResult
    func textColor(_ color: UIColor?) -> Cpf {
        wrapped.textColor = color
        return self
    }
    
    @discardableResult
    func text(alignment: NSTextAlignment) -> Cpf {
        wrapped.textAlignment = alignment
        return self
    }
    
    @discardableResult
    func selected(range: NSRange) -> Cpf {
        wrapped.selectedRange = range
        return self
    }
    
    @discardableResult
    func editable(_ enable: Bool) -> Cpf {
        wrapped.isEditable = enable
        return self
    }
    
    @discardableResult
    func selectable(_ enable: Bool) -> Cpf {
        wrapped.isSelectable = enable
        return self
    }
    
    @discardableResult
    func attributed(text: RichText) -> Cpf {
        wrapped.attributedText = text.attributedText
        return self
    }
    
    @discardableResult
    func attributed(text: Cpf<RichText>) -> Cpf {
        return self.attributed(text: text.wrapped)
    }

    @discardableResult
    func textContainer(insets: UIEdgeInsets, padding: CGFloat? = nil) -> Cpf {
        wrapped.textContainerInset = insets
        if let linePadding = padding {
            wrapped.textContainer.lineFragmentPadding = linePadding
        }
        return self
    }
    
    @discardableResult
    func input(view: UIView?, accessoryView: UIView?) -> Cpf {
        wrapped.inputView = view
        wrapped.inputAccessoryView = accessoryView
        return self
    }
}
