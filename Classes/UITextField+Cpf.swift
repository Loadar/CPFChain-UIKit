//
//  UITextField+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Base: UITextField {
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
    public func borderStyle(_ style: UITextField.BorderStyle) -> Cpf {
        base.borderStyle = style
        return self
    }
    
    @discardableResult
    public func defaultTextAttributes(_ attributes: [RichText.Attribute]) -> Cpf {
        base.defaultTextAttributes = RichText().attributeInfo(of: attributes)
        return self
    }
    
    @discardableResult
    public func placeholder(_ value: String?) -> Cpf {
        base.placeholder = value
        return self
    }
    
    @discardableResult
    public func attributed(placeholder: RichText) -> Cpf {
        base.attributedPlaceholder = placeholder.attributedText
        return self
    }
    
    @discardableResult
    public func attributed(placeholder: Cpf<RichText>) -> Cpf {
        return self.attributed(placeholder: placeholder.base)
    }
    
    @discardableResult
    public func clearsOnBeginEditing(_ value: Bool) -> Cpf {
        base.clearsOnBeginEditing = value
        return self
    }
    
    @discardableResult
    public func clearsOnInsertion(_ value: Bool) -> Cpf {
        base.clearsOnInsertion = value
        return self
    }
    
    @discardableResult
    public func ajustFontSize(toFitWidth: Bool, minSize: CGFloat? = nil) -> Cpf {
        base.adjustsFontSizeToFitWidth = toFitWidth
        if toFitWidth, let size = minSize {
            base.minimumFontSize = size
        }
        return self
    }
    
    @discardableResult
    public func delegate(_ delegate: UITextFieldDelegate?) -> Cpf {
        base.delegate = delegate
        return self
    }
    
    @discardableResult
    public func background(image: UIImage?, state: UIControl.State? = nil) -> Cpf {
        if state == .disabled {
            base.disabledBackground = image
        } else {
            base.background = image
        }
        return self
    }
    
    @discardableResult
    public func clearButton(mode: UITextField.ViewMode) -> Cpf {
        base.clearButtonMode = mode
        return self
    }
    
    @discardableResult
    public func left(view: UIView?, mode: UITextField.ViewMode? = nil) -> Cpf {
        base.leftView = view
        if let viewMode = mode {
            base.leftViewMode = viewMode
        }
        return self
    }
    
    @discardableResult
    public func right(view: UIView?, mode: UITextField.ViewMode? = nil) -> Cpf {
        base.rightView = view
        if let viewMode = mode {
            base.rightViewMode = viewMode
        }
        return self
    }
    
    @discardableResult
    public func input(view: UIView?, accessoryView: UIView?) -> Cpf {
        base.inputView = view
        base.inputAccessoryView = accessoryView
        return self
    }
    
    @discardableResult
    public func autocapitalization(type: UITextAutocapitalizationType) -> Cpf {
        base.autocapitalizationType = type
        return self
    }
    
    @discardableResult
    public func autocorrection(type: UITextAutocorrectionType) -> Cpf {
        base.autocorrectionType = type
        return self
    }
    
    @discardableResult
    public func spellChecking(type: UITextSpellCheckingType) -> Cpf {
        base.spellCheckingType = type
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func smartQuotes(type: UITextSmartQuotesType) -> Cpf {
        base.smartQuotesType = type
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func smartDashes(type: UITextSmartDashesType) -> Cpf {
        base.smartDashesType = type
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func smartInsertDelete(type: UITextSmartInsertDeleteType) -> Cpf {
        base.smartInsertDeleteType = type
        return self
    }
    
    @discardableResult
    public func keyboard(type: UIKeyboardType? = nil, appearance: UIKeyboardAppearance? = nil) -> Cpf {
        if let theType = type {
            base.keyboardType = theType
        }
        if let theAppearance = appearance {
            base.keyboardAppearance = theAppearance
        }
        return self
    }
    
    @discardableResult
    public func returnKey(type: UIReturnKeyType? = nil, autoEnable: Bool? = nil) -> Cpf {
        if let theType = type {
            base.returnKeyType = theType
        }
        if let enable = autoEnable {
            base.enablesReturnKeyAutomatically = enable
        }
        return self
    }
    
    @discardableResult
    public func secure(_ isSecure: Bool) -> Cpf {
        base.isSecureTextEntry = isSecure
        return self
    }
    
    @available(iOS 10, *)
    @discardableResult
    public func textContent(type: UITextContentType) -> Cpf {
        base.textContentType = type
        return self
    }
}
