//
//  UITableView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Base: UITableView {
    @discardableResult
    public func dataSource(_ target: UITableViewDataSource?) -> Cpf {
        base.dataSource = target
        return self
    }
    
    @discardableResult
    public func delegate(_ target: UITableViewDelegate?) -> Cpf {
        base.delegate = target
        return self
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    public func prefetchDataSource(_ target: UITableViewDataSourcePrefetching?) -> Cpf {
        base.prefetchDataSource = target
        return self
    }
    
    @discardableResult
    public func row(height: CGFloat) -> Cpf {
        base.rowHeight = height
        return self
    }
    
    @discardableResult
    public func sectionHeader(height: CGFloat) -> Cpf {
        base.sectionHeaderHeight = height
        return self
    }
    
    @discardableResult
    public func sectionFooter(height: CGFloat) -> Cpf {
        base.sectionFooterHeight = height
        return self
    }
    
    @discardableResult
    public func separator(style: UITableViewCell.SeparatorStyle? = nil, insets: UIEdgeInsets? = nil, color: UIColor? = nil, effect: UIVisualEffect? = nil) -> Cpf {
        if let separatorStyle = style {
            base.separatorStyle = separatorStyle
        }
        if let separatorInsets = insets {
            base.separatorInset = separatorInsets
        }
        if let separatorColor = color {
            base.separatorColor = separatorColor
        }
        if let separatorEffect = effect {
            base.separatorEffect = separatorEffect
        }
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
    public func sectionIndex(color: UIColor? = nil, backgroundColor: UIColor? = nil, trackingBackgroundColor: UIColor? = nil) -> Cpf {
        if let indexColor = color {
            base.sectionIndexColor = indexColor
        }
        if let indexColor = backgroundColor {
            base.sectionIndexBackgroundColor = indexColor
        }
        if let indexColor = trackingBackgroundColor {
            base.sectionIndexTrackingBackgroundColor = indexColor
        }
        return self
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    public func insetsContent(automatically: Bool) -> Cpf {
        base.insetsContentViewsToSafeArea = automatically
        return self
    }
    
    @discardableResult
    public func register(cell cellClass: UITableViewCell.Type?, with identifier: String) -> Cpf {
        base.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func register(header headerClass: UITableViewHeaderFooterView.Type?, with identifier: String) -> Cpf {
        base.register(headerClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func register(footer footerClass: UITableViewHeaderFooterView.Type?, with identifier: String) -> Cpf {
        base.register(footerClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    public func disableEstimation(_ toDisable: Bool) -> Cpf {
        base.estimatedRowHeight = 0
        base.estimatedSectionHeaderHeight = 0
        base.estimatedSectionFooterHeight = 0
        return self
    }
}

