//
//  UICollectionViewFlowLayout+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Base: UICollectionViewFlowLayout {
    @discardableResult
    public func item(size: CGSize) -> Cpf {
        base.itemSize = size
        return self
    }
    
    @discardableResult
    public func estimatedItem(size: CGSize) -> Cpf {
        base.estimatedItemSize = size
        return self
    }
    
    @discardableResult
    public func lineSpacing(min: CGFloat) -> Cpf {
        base.minimumLineSpacing = min
        return self
    }
    
    @discardableResult
    public func interitemSpacing(min: CGFloat) -> Cpf {
        base.minimumInteritemSpacing = min
        return self
    }
    
    @discardableResult
    public func scroll(direction: UICollectionView.ScrollDirection) -> Cpf {
        base.scrollDirection = direction
        return self
    }
    
    @discardableResult
    public func header(size: CGSize) -> Cpf {
        base.headerReferenceSize = size
        return self
    }
    
    @discardableResult
    public func footer(size: CGSize) -> Cpf {
        base.footerReferenceSize = size
        return self
    }
    
    @discardableResult
    public func section(insets: UIEdgeInsets) -> Cpf {
        base.sectionInset = insets
        return self
    }
    
    @available(iOS 9.0, *)
    public func sectionHeadersPinToVisibleBounds(_ value: Bool) -> Cpf {
        base.sectionHeadersPinToVisibleBounds = value
        return self
    }
    
    @available(iOS 9.0, *)
    public func sectionFootersPinToVisibleBounds(_ value: Bool) -> Cpf {
        base.sectionFootersPinToVisibleBounds = value
        return self
    }

}

