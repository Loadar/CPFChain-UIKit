//
//  UICollectionViewFlowLayout+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Wrapped: UICollectionViewFlowLayout {
    @discardableResult
    func item(size: CGSize) -> Cpf {
        wrapped.itemSize = size
        return self
    }
    
    @discardableResult
    func estimatedItem(size: CGSize) -> Cpf {
        wrapped.estimatedItemSize = size
        return self
    }
    
    @discardableResult
    func lineSpacing(min: CGFloat) -> Cpf {
        wrapped.minimumLineSpacing = min
        return self
    }
    
    @discardableResult
    func interitemSpacing(min: CGFloat) -> Cpf {
        wrapped.minimumInteritemSpacing = min
        return self
    }
    
    @discardableResult
    func scroll(direction: UICollectionView.ScrollDirection) -> Cpf {
        wrapped.scrollDirection = direction
        return self
    }
    
    @discardableResult
    func header(size: CGSize) -> Cpf {
        wrapped.headerReferenceSize = size
        return self
    }
    
    @discardableResult
    func footer(size: CGSize) -> Cpf {
        wrapped.footerReferenceSize = size
        return self
    }
    
    @discardableResult
    func section(insets: UIEdgeInsets) -> Cpf {
        wrapped.sectionInset = insets
        return self
    }
    
    func sectionHeadersPinToVisibleBounds(_ value: Bool) -> Cpf {
        wrapped.sectionHeadersPinToVisibleBounds = value
        return self
    }
    
    func sectionFootersPinToVisibleBounds(_ value: Bool) -> Cpf {
        wrapped.sectionFootersPinToVisibleBounds = value
        return self
    }
}
