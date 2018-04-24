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
    public func attributed(text: String?, attributes: [RichTextAttribute]) -> Cpf {
        let richText = RichText([RichTextItem(text: text, attributes: attributes)])
        return attributed(text: richText)
    }
    
    @discardableResult
    public func attributed(text: (String?, [RichTextAttribute])...) -> Cpf {
        let richText = RichText(text.map { RichTextItem(text: $0.0, attributes: $0.1) })
        return attributed(text: richText)
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

