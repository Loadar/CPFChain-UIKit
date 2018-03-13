//
//  CALayer+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Base: CALayer {
    @discardableResult
    public func corner(radius: CGFloat) -> Cpf {
        base.cornerRadius = radius
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func corner(radius: CGFloat, mask: CACornerMask) -> Cpf {
        base.cornerRadius = radius
        base.maskedCorners = mask
        return self
    }

    @discardableResult
    public func border(width: CGFloat, color: UIColor? = nil) -> Cpf {
        base.borderWidth = width
        if let borderColor = color {
            base.borderColor = borderColor.cgColor
        }
        return self
    }
    
    @discardableResult
    public func shadow(color: UIColor?, opacity: CGFloat = 1.0, offset: CGSize = .zero, radius: CGFloat = 3.0, path: UIBezierPath? = nil) -> Cpf {
        base.shadowColor = color?.cgColor
        base.shadowOpacity = Float(opacity)
        base.shadowOffset = offset
        base.shadowRadius = radius
        base.shadowPath = path?.cgPath
        return self
    }
}

