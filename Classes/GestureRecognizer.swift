//
//  GestureRecognizer.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import UIKit

public struct GestureRecognizer {
    /// 最终的Gesture Recognizer
    var recognizer: UIGestureRecognizer
    
    /// Tap手势
    ///
    /// - Parameters:
    ///   - target: 处理手势对象
    ///   - action: 处理Selector
    ///   - taps: 需要点击多少次触发手势, 未设置时使用默认值
    ///   - touches: 需要多少触控点(多少手指)触发手势，未设置时使用默认值
    /// - Returns: 结果Recognizer
    public static func tap(to target: Any?, action: Selector?, taps: Int? = 1, touches: Int? = 1) -> GestureRecognizer {
        let recognizer = UITapGestureRecognizer(target: target, action: action)
        if let count = taps {
            recognizer.numberOfTapsRequired = count
        }
        if let count = touches {
            recognizer.numberOfTouchesRequired = count
        }
        return GestureRecognizer(recognizer: recognizer)
    }
    
    /// Pinch手势
    ///
    /// - Parameters:
    ///   - target: 处理手势对象
    ///   - action: 处理Selector
    /// - Returns: 结果Recognizer
    public static func pinch(to target: Any?, action: Selector?) -> GestureRecognizer {
        let recognizer = UIPinchGestureRecognizer(target: target, action: action)
        return GestureRecognizer(recognizer: recognizer)
    }
    
    /// Rotate手势
    ///
    /// - Parameters:
    ///   - target: 处理手势对象
    ///   - action: 处理Selector
    /// - Returns: 结果Recognizer
    public static func rotate(to target: Any?, action: Selector?) -> GestureRecognizer {
        let recognizer = UIRotationGestureRecognizer(target: target, action: action)
        return GestureRecognizer(recognizer: recognizer)
    }
    
    /// Swipe手势
    ///
    /// - Parameters:
    ///   - target: 处理手势对象
    ///   - action: 处理Selector
    ///   - touches: 需要多少触控点(多少手指)触发手势, 未设置时使用默认值
    ///   - direction: 触发方向，未设置时使用默认值
    /// - Returns: 结果Recognizer
    public static func swipe(to target: Any?, action: Selector?, touches: Int? = 1, direction: UISwipeGestureRecognizer.Direction = .right) -> GestureRecognizer {
        let recognizer = UISwipeGestureRecognizer(target: target, action: action)
        if let count = touches {
            recognizer.numberOfTouchesRequired = count
        }
        recognizer.direction = direction
        return GestureRecognizer(recognizer: recognizer)
    }
    
    /// Pan手势
    ///
    /// - Parameters:
    ///   - target: 处理手势对象
    ///   - action: 处理Selector
    ///   - minTouches: 需求最少触控点，未设置时使用默认值
    ///   - maxTouches: 需求最大触控点，未设置时使用默认值
    /// - Returns: 结果Recognizer
    public static func pan(to target: Any?, action: Selector?, minTouches: Int? = nil, maxTouches: Int? = nil) -> GestureRecognizer {
        let recognizer = UIPanGestureRecognizer(target: target, action: action)
        if let touches = minTouches {
            recognizer.minimumNumberOfTouches = touches
        }
        if let touches = maxTouches {
            recognizer.maximumNumberOfTouches = touches
        }
        return GestureRecognizer(recognizer: recognizer)
    }
    
    /// Screen Edge Pan手势
    ///
    /// - Parameters:
    ///   - target: 处理手势对象
    ///   - action: 处理Selector
    ///   - edges: 触发边界，未设置时使用默认值
    /// - Returns: 结果Recognizer
    public static func screenEdgePan(to target: Any?, action: Selector?, edges: UIRectEdge = .all) -> GestureRecognizer {
        let recognizer = UIScreenEdgePanGestureRecognizer(target: target, action: action)
        recognizer.edges = edges
        return GestureRecognizer(recognizer: recognizer)
    }
    
    /// Long Press手势
    ///
    /// - Parameters:
    ///   - target: 处理手势对象
    ///   - action: 处理Selector
    ///   - taps: 需要点击多少次触发手势, 未设置时使用默认值
    ///   - touches: 需要多少触控点(多少手指)触发手势，未设置时使用默认值
    ///   - minDuration: 需求最少持续时间，未设置时使用默认值
    ///   - allowedMovement: 允许最大位移，未设置时使用默认值
    /// - Returns: 结果Recognizer
    public static func longPress(to target: Any?, action: Selector?, taps: Int? = nil, touches: Int? = nil, minDuration: CFTimeInterval? = nil, allowedMovement: CGFloat? = nil) -> GestureRecognizer {
        let recognizer = UILongPressGestureRecognizer(target: target, action: action)
        if let count = taps {
            recognizer.numberOfTapsRequired = count
        }
        if let count = touches {
            recognizer.numberOfTouchesRequired = count
        }
        if let duration = minDuration {
            recognizer.minimumPressDuration = duration
        }
        if let movement = allowedMovement {
            recognizer.allowableMovement = movement
        }
        return GestureRecognizer(recognizer: recognizer)
    }
}

