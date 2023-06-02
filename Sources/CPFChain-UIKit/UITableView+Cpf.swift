//
//  UITableView+Cpf.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit
import CPFChain

public extension Cpf where Wrapped: UITableView {
    @discardableResult
    func dataSource(_ target: UITableViewDataSource?) -> Cpf {
        wrapped.dataSource = target
        return self
    }
    
    @discardableResult
    func delegate(_ target: UITableViewDelegate?) -> Cpf {
        wrapped.delegate = target
        return self
    }
    
    @discardableResult
    func prefetchDataSource(_ target: UITableViewDataSourcePrefetching?) -> Cpf {
        wrapped.prefetchDataSource = target
        return self
    }
    
    @discardableResult
    func row(height: CGFloat) -> Cpf {
        wrapped.rowHeight = height
        return self
    }
    
    @discardableResult
    func sectionHeader(height: CGFloat) -> Cpf {
        wrapped.sectionHeaderHeight = height
        return self
    }
    
    @discardableResult
    func sectionFooter(height: CGFloat) -> Cpf {
        wrapped.sectionFooterHeight = height
        return self
    }
    
    @discardableResult
    func separator(style: UITableViewCell.SeparatorStyle? = nil, insets: UIEdgeInsets? = nil, color: UIColor? = nil, effect: UIVisualEffect? = nil) -> Cpf {
        if let separatorStyle = style {
            wrapped.separatorStyle = separatorStyle
        }
        if let separatorInsets = insets {
            wrapped.separatorInset = separatorInsets
        }
        if let separatorColor = color {
            wrapped.separatorColor = separatorColor
        }
        if let separatorEffect = effect {
            wrapped.separatorEffect = separatorEffect
        }
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
    func sectionIndex(color: UIColor? = nil, backgroundColor: UIColor? = nil, trackingBackgroundColor: UIColor? = nil) -> Cpf {
        if let indexColor = color {
            wrapped.sectionIndexColor = indexColor
        }
        if let indexColor = backgroundColor {
            wrapped.sectionIndexBackgroundColor = indexColor
        }
        if let indexColor = trackingBackgroundColor {
            wrapped.sectionIndexTrackingBackgroundColor = indexColor
        }
        return self
    }
    
    @discardableResult
    func insetsContent(automatically: Bool) -> Cpf {
        wrapped.insetsContentViewsToSafeArea = automatically
        return self
    }
    
    @discardableResult
    func register(cell cellClass: UITableViewCell.Type?, with identifier: String) -> Cpf {
        wrapped.register(cellClass, forCellReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(header headerClass: UITableViewHeaderFooterView.Type?, with identifier: String) -> Cpf {
        wrapped.register(headerClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func register(footer footerClass: UITableViewHeaderFooterView.Type?, with identifier: String) -> Cpf {
        wrapped.register(footerClass, forHeaderFooterViewReuseIdentifier: identifier)
        return self
    }
    
    @discardableResult
    func disableEstimation(_ toDisable: Bool) -> Cpf {
        wrapped.estimatedRowHeight = 0
        wrapped.estimatedSectionHeaderHeight = 0
        wrapped.estimatedSectionFooterHeight = 0
        return self
    }
}

