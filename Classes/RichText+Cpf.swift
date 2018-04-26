//
//  RichText+Cpf.swift
//  CPFChain_UIKitApp
//
//  Created by Aaron on 2018/4/25.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import Foundation
import CPFChain

extension String {
    public var cpf_richText: RichText {
        return RichText(text: self, attributes: [])
    }
}

extension RichText: CpfCompatible {}

extension Cpf where Base: RichText {
    @discardableResult
    public func add(_ text: Cpf<RichText>) -> Cpf {
        base.add(richText: text.base)
        return self
    }
    
    @discardableResult
    public func font(_ font: UIFont) -> Cpf {
        return self.add(attribute: .font(font))
    }
    
    @discardableResult
    public func color(_ color: UIColor) -> Cpf {
        return self.add(attribute: .color(color))
    }
    
    @discardableResult
    public func paragraph(_ style: NSParagraphStyle) -> Cpf {
        return self.add(attribute: .paragraph(style))
    }
    
    @discardableResult
    public func add(attribute: RichText.Attribute) -> Cpf {
        base.add(attribute: attribute)
        return self
    }
}
