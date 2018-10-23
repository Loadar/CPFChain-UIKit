//
//  RichText.swift
//  CPFChain+UIKit
//
//  Created by Aaron on 2018/3/13.
//  Copyright © 2018年 Aaron. All rights reserved.
//

import Foundation
import UIKit

public class RichText {
    var textList: [String]
    var attributesList: [[RichText.Attribute]]
    
    public init(text: String?, attributes: [RichText.Attribute]) {
        self.textList = [text ?? ""]
        self.attributesList = [attributes]
    }
    
    public init() {
        self.textList = []
        self.attributesList = []
    }
    
    public func add(richText: RichText) {
        textList.append(contentsOf: richText.textList)
        attributesList.append(contentsOf: richText.attributesList)
    }
    
    /// 给指定index的text添加属性，未指定index时添加到最后一个text上
    public func add(attribute: RichText.Attribute, at index: Int? = nil) {
        let count = attributesList.count
        if count == 0 { return }
        guard let theIndex = index else {
            // 未指定index
            attributesList[attributesList.count - 1].append(attribute)
            return
        }
        guard (0..<count).contains(theIndex) else {
            // index越界
            return
        }
        attributesList[theIndex].append(attribute)
    }
    
    /// 结果Attributed String
    public var attributedText: NSAttributedString {
        let resultText = NSMutableAttributedString()
        
        for i in 0..<textList.count {
            let aText = textList[i]
            let anAttributes = attributesList[i]

            // 忽略空字符串
            guard aText.count > 0 else { continue }
            resultText.append(NSAttributedString(string: aText, attributes: self.attributeInfo(of: anAttributes)))
        }
        return resultText
    }
}

extension RichText {
    public enum Attribute {
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
    
    /// 文字属性
    public func attributeInfo(of attributes: [RichText.Attribute]) -> [NSAttributedString.Key: Any] {
        var info = [NSAttributedString.Key: Any]()
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
}
