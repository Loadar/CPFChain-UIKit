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
public extension Cpf where Wrapped: UICollectionView {
    @discardableResult
    func dataSource(_ target: UICollectionViewDataSource?) -> Cpf {
        wrapped.dataSource = target
        return self
    }
    
    @discardableResult
    func prefetch(enabled: Bool, dataSource: UICollectionViewDataSourcePrefetching?) -> Cpf {
        wrapped.isPrefetchingEnabled = enabled
        wrapped.prefetchDataSource = dataSource
        return self
    }
    
    @discardableResult
    func delegate(_ target: UICollectionViewDelegate?) -> Cpf {
        wrapped.delegate = target
        return self
    }
    
    @discardableResult
    func register(cell cellClass: UICollectionViewCell.Type?, with identifier: String) -> Cpf {
        wrapped.register(cellClass, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(cell nib: UINib?, with identifier: String) -> Cpf {
        wrapped.register(nib, forCellWithReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(header headerClass: UICollectionReusableView.Type?, with identifier: String) -> Cpf {
        wrapped.register(headerClass, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(header nib: UINib?, with identifier: String) -> Cpf {
        wrapped.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: identifier)
        return self
    }

    @discardableResult
    func register(footer footerClass: UICollectionReusableView.Type?, with identifier: String) -> Cpf {
        wrapped.register(footerClass, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(footer nib: UINib?, with identifier: String) -> Cpf {
        wrapped.register(nib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: identifier)
        return self
    }

    @discardableResult
    func allowsSelection(_ selectionEnabled: Bool, multi: Bool? = nil) -> Cpf {
        wrapped.allowsSelection = selectionEnabled
        if let value = multi {
            wrapped.allowsMultipleSelection = value
        }
        return self
    }
    
    @discardableResult
    func layout(_ layout: UICollectionViewLayout, animated: Bool = false, completion: ((Bool) -> Void)? = nil) -> Cpf {
        if animated {
            wrapped.setCollectionViewLayout(layout, animated: animated, completion: completion)
        } else {
            wrapped.collectionViewLayout = layout
        }
        return self
    }
}

// MARK: - 初始化
extension UICollectionView {
    
    /// 使用layout container初始化view
    convenience public init(flowLayout: Cpf<UICollectionViewFlowLayout>) {
        self.init(frame: .zero, collectionViewLayout: flowLayout.wrapped)
    }
    
    /// 使用flow layout初始化view
    convenience public init(flowLayout: UICollectionViewFlowLayout) {
        self.init(frame: .zero, collectionViewLayout: flowLayout)
    }
}
