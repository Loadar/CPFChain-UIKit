//
//  UICollectionView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

// MARK: - UICollectionView
public extension Cpf where Base: UICollectionView {
    @discardableResult
    public func dataSource(_ target: UICollectionViewDataSource?) -> Cpf {
        base.dataSource = target
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    public func prefetch(enabled: Bool, dataSource: UICollectionViewDataSourcePrefetching?) -> Cpf {
        base.isPrefetchingEnabled = enabled
        base.prefetchDataSource = dataSource
        return self
    }
    
    @discardableResult
    public func delegate(_ target: UICollectionViewDelegate?) -> Cpf {
        base.delegate = target
        return self
    }
    
    @discardableResult
    public func register(cell cellClass: UICollectionViewCell.Type?, with identifier: String) -> Cpf {
        base.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func register(cell nib: UINib?, with identifier: String) -> Cpf {
        base.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func register(header headerClass: UICollectionReusableView.Type?, with identifier: String) -> Cpf {
        base.register(headerClass, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func register(header nib: UINib?, with identifier: String) -> Cpf {
        base.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: identifier)
        return self
    }

    @discardableResult
    public func register(footer footerClass: UICollectionReusableView.Type?, with identifier: String) -> Cpf {
        base.register(footerClass, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func register(footer nib: UINib?, with identifier: String) -> Cpf {
        base.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
        return self
    }

    @discardableResult
    public func allowsSelection(_ selectionEnabled: Bool, multi: Bool? = nil) -> Cpf {
        base.allowsSelection = selectionEnabled
        if let value = multi {
            base.allowsMultipleSelection = value
        }
        return self
    }
    
    @discardableResult
    public func layout(_ layout: UICollectionViewLayout, animated: Bool = false, completion: ((Bool) -> Void)? = nil) -> Cpf {
        if animated {
            base.setCollectionViewLayout(layout, animated: animated, completion: completion)
        } else {
            base.collectionViewLayout = layout
        }
        return self
    }
}

// MARK: - 初始化
extension UICollectionView {
    
    /// 使用layout container初始化view
    convenience public init(flowLayout: Cpf<UICollectionViewFlowLayout>) {
        self.init(frame: .zero, collectionViewLayout: flowLayout.base)
    }
    
    /// 使用flow layout初始化view
    convenience public init(flowLayout: UICollectionViewFlowLayout) {
        self.init(frame: .zero, collectionViewLayout: flowLayout)
    }
}

