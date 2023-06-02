//
//  RichText+Cpf.swift
//  CPFChain_UIKitApp
//
//  Created by Aaron on 2018/4/25.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import Foundation
import UIKit
import CPFChain

public extension String {
    var cpf_richText: RichText {
        return RichText(text: self, attributes: [])
    }
}

extension RichText: CpfCompatible {}

public extension Cpf where Wrapped: RichText {
    @discardableResult
    func add(_ text: Cpf<RichText>) -> Cpf {
        wrapped.add(richText: text.wrapped)
        return self
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Cpf {
        return self.add(attribute: .font(font))
    }
    
    @discardableResult
     func color(_ color: UIColor) -> Cpf {
        return self.add(attribute: .color(color))
    }
    
    @discardableResult
    func paragraph(_ style: NSParagraphStyle) -> Cpf {
        return self.add(attribute: .paragraph(style))
    }
    
    @discardableResult
    func add(attribute: RichText.Attribute) -> Cpf {
        wrapped.add(attribute: attribute)
        return self
    }
}
