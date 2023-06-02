//
//  UITextField+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Wrapped: UITextField {
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
    func borderStyle(_ style: UITextField.BorderStyle) -> Cpf {
        wrapped.borderStyle = style
        return self
    }
    
    @discardableResult
    func defaultTextAttributes(_ attributes: [RichText.Attribute]) -> Cpf {
        wrapped.defaultTextAttributes = RichText().attributeInfo(of: attributes)
        return self
    }
    
    @discardableResult
    func placeholder(_ value: String?) -> Cpf {
        wrapped.placeholder = value
        return self
    }
    
    @discardableResult
    func attributed(placeholder: RichText) -> Cpf {
        wrapped.attributedPlaceholder = placeholder.attributedText
        return self
    }
    
    @discardableResult
    func attributed(placeholder: Cpf<RichText>) -> Cpf {
        return self.attributed(placeholder: placeholder.wrapped)
    }
    
    @discardableResult
    func clearsOnBeginEditing(_ value: Bool) -> Cpf {
        wrapped.clearsOnBeginEditing = value
        return self
    }
    
    @discardableResult
    func clearsOnInsertion(_ value: Bool) -> Cpf {
        wrapped.clearsOnInsertion = value
        return self
    }
    
    @discardableResult
    func ajustFontSize(toFitWidth: Bool, minSize: CGFloat? = nil) -> Cpf {
        wrapped.adjustsFontSizeToFitWidth = toFitWidth
        if toFitWidth, let size = minSize {
            wrapped.minimumFontSize = size
        }
        return self
    }
    
    @discardableResult
    func delegate(_ delegate: UITextFieldDelegate?) -> Cpf {
        wrapped.delegate = delegate
        return self
    }
    
    @discardableResult
    func background(image: UIImage?, state: UIControl.State? = nil) -> Cpf {
        if state == .disabled {
            wrapped.disabledBackground = image
        } else {
            wrapped.background = image
        }
        return self
    }
    
    @discardableResult
    func clearButton(mode: UITextField.ViewMode) -> Cpf {
        wrapped.clearButtonMode = mode
        return self
    }
    
    @discardableResult
    func left(view: UIView?, mode: UITextField.ViewMode? = nil) -> Cpf {
        wrapped.leftView = view
        if let viewMode = mode {
            wrapped.leftViewMode = viewMode
        }
        return self
    }
    
    @discardableResult
    func right(view: UIView?, mode: UITextField.ViewMode? = nil) -> Cpf {
        wrapped.rightView = view
        if let viewMode = mode {
            wrapped.rightViewMode = viewMode
        }
        return self
    }
    
    @discardableResult
    func input(view: UIView?, accessoryView: UIView?) -> Cpf {
        wrapped.inputView = view
        wrapped.inputAccessoryView = accessoryView
        return self
    }
    
    @discardableResult
    func autocapitalization(type: UITextAutocapitalizationType) -> Cpf {
        wrapped.autocapitalizationType = type
        return self
    }
    
    @discardableResult
    func autocorrection(type: UITextAutocorrectionType) -> Cpf {
        wrapped.autocorrectionType = type
        return self
    }
    
    @discardableResult
    func spellChecking(type: UITextSpellCheckingType) -> Cpf {
        wrapped.spellCheckingType = type
        return self
    }
    
    @discardableResult
    func smartQuotes(type: UITextSmartQuotesType) -> Cpf {
        wrapped.smartQuotesType = type
        return self
    }
    
    @discardableResult
    func smartDashes(type: UITextSmartDashesType) -> Cpf {
        wrapped.smartDashesType = type
        return self
    }
    
    @discardableResult
    func smartInsertDelete(type: UITextSmartInsertDeleteType) -> Cpf {
        wrapped.smartInsertDeleteType = type
        return self
    }
    
    @discardableResult
    func keyboard(type: UIKeyboardType? = nil, appearance: UIKeyboardAppearance? = nil) -> Cpf {
        if let theType = type {
            wrapped.keyboardType = theType
        }
        if let theAppearance = appearance {
            wrapped.keyboardAppearance = theAppearance
        }
        return self
    }
    
    @discardableResult
    func returnKey(type: UIReturnKeyType? = nil, autoEnable: Bool? = nil) -> Cpf {
        if let theType = type {
            wrapped.returnKeyType = theType
        }
        if let enable = autoEnable {
            wrapped.enablesReturnKeyAutomatically = enable
        }
        return self
    }
    
    @discardableResult
    func secure(_ isSecure: Bool) -> Cpf {
        wrapped.isSecureTextEntry = isSecure
        return self
    }
    
    @discardableResult
    func textContent(type: UITextContentType) -> Cpf {
        wrapped.textContentType = type
        return self
    }
}
