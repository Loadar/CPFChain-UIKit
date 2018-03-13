//
//  RichText.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import Foundation
import UIKit

public struct RichText {
    var items: [RichTextItem]
    
    public init(_ items: [RichTextItem]) {
        self.items = items
    }
    
    /// 结果Attributed String
    public var attributedText: NSAttributedString {
        let text = NSMutableAttributedString()
        items.forEach { (aItem) in
            guard let theText = aItem.attributedText else { return }
            text.append(theText)
        }
        return text
    }
}

public struct RichTextItem {
    var text: String?
    var attributes: [RichTextAttribute]
    
    public init(text: String?, attributes: [RichTextAttribute]) {
        self.text = text
        self.attributes = attributes
    }
    
    /// 文字属性
    public var attributeInfo: [NSAttributedStringKey: Any] {
        var info = [NSAttributedStringKey: Any]()
        // 设置对应属性
        for anAttribute in attributes {
            switch anAttribute {
            case .font(let font):
                info[.font] = font
            case .paragraph(let paragraph):
                info[.paragraphStyle] = paragraph
            case .color(let color):
                info[.foregroundColor] = color
            case .background(let color):
                info[.backgroundColor] = color
            case .ligature(let isLigature):
                let value: Int = isLigature ? 1 : 0
                info[.ligature] = NSNumber(value: value)
            case .kern(let kern):
                let value = Float(kern)
                info[.kern] = NSNumber(value: value)
            case .throughline(let style, let color):
                info[.strikethroughStyle] = NSNumber(value: style.rawValue)
                info[.strikethroughColor] = color
            case .underline(let style, let color):
                info[.underlineStyle] = NSNumber(value: style.rawValue)
                info[.underlineColor] = color
            case .stroke(let color, let width):
                info[.strokeColor] = color
                if let strokeWidth = width {
                    let value = Float(strokeWidth)
                    info[.strokeWidth] = NSNumber(value: value)
                }
            case .shadow(let shadow):
                info[.shadow] = shadow
            case .effect(let effect):
                info[.textEffect] = effect.rawValue as NSString
            case .attachment(let attachment):
                info[.attachment] = attachment
            case .link(let url):
                info[.link] = url as NSURL
            case .baselineOffset(let offset):
                let value = Float(offset)
                info[.baselineOffset] = NSNumber(value: value)
            case .obliqueness(let obliqueness):
                let value = Float(obliqueness)
                info[.obliqueness] = NSNumber(value: value)
            case .expansion(let expansion):
                let value = Float(expansion)
                info[.expansion] = NSNumber(value: value)
            case .writingDirection(let direction, let type):
                let value: Int = direction.rawValue | type.rawValue
                info[.writingDirection] = [NSNumber(value: value)]
            case .writingDirectionOld(let direction, let textDirection):
                let value: Int = direction.rawValue | textDirection.rawValue
                info[.writingDirection] = [NSNumber(value: value)]
            }
        }
        
        return info
    }
    
    /// Attributed String
    public var attributedText: NSAttributedString? {
        guard let theText = text else { return nil }
        return NSAttributedString(string: theText, attributes: attributeInfo)
    }
}

public enum RichTextAttribute {
    // 字体
    case font(UIFont)
    // 段落
    case paragraph(NSParagraphStyle)
    // 文字颜色
    case color(UIColor)
    // 背景色
    case background(UIColor)
    // 连写
    case ligature(Bool)
    // 字间距
    case kern(CGFloat)
    // 中划线
    case throughline(NSUnderlineStyle, UIColor?)
    // 下划线
    case underline(NSUnderlineStyle, UIColor?)
    // 描边
    case stroke(UIColor?, CGFloat?)
    // 阴影
    case shadow(NSShadow)
    // 文字效果
    case effect(NSAttributedString.TextEffectStyle)
    // 附件
    case attachment(NSTextAttachment)
    // 链接
    case link(URL)
    // 基准线偏移
    case baselineOffset(CGFloat)
    // 倾斜
    case obliqueness(CGFloat)
    // 水平扩展
    case expansion(CGFloat)
    // 书写方向
    @available(iOS 9, *)
    case writingDirection(NSWritingDirection, NSWritingDirectionFormatType)
    @available (iOS, introduced: 7.0, obsoleted: 9.0)
    case writingDirectionOld(NSWritingDirection, NSTextWritingDirection)
}

