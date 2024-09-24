//
//  CALayer+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Wrapped: CALayer {
    @discardableResult
    func corner(radius: CGFloat, mask: CACornerMask? = nil) -> Cpf {
        wrapped.cornerRadius = radius
        let corners = mask ?? [.layerMinXMinYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        wrapped.maskedCorners = corners
        
        if #available(iOS 13.0, *) {
            wrapped.cornerCurve = .circular
        } else {
            // do nothing
        }
        return self
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func cornerCurve(_ curve: CALayerCornerCurve) -> Cpf {
        wrapped.cornerCurve = curve
        return self
    }

    @discardableResult
    func border(width: CGFloat, color: UIColor? = nil) -> Cpf {
        wrapped.borderWidth = width
        if let borderColor = color {
            wrapped.borderColor = borderColor.cgColor
        }
        return self
    }
    
    @discardableResult
    func shadow(color: UIColor?, opacity: CGFloat = 1.0, offset: CGSize = .zero, radius: CGFloat = 3.0, path: UIBezierPath? = nil) -> Cpf {
        wrapped.shadowColor = color?.cgColor
        wrapped.shadowOpacity = Float(opacity)
        wrapped.shadowOffset = offset
        wrapped.shadowRadius = radius
        wrapped.shadowPath = path?.cgPath
        return self
    }
}
