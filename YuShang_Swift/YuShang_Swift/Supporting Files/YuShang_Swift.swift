//
//  YuShang_Swift.swift
//  YuShang_Swift
//
//  Created by Enjoytouch on 16/7/25.
//  Copyright © 2016年 WRH. All rights reserved.
//

import UIKit

let kScreenWidth = UIScreen.mainScreen().bounds.size.width
let kScreenHeight = UIScreen.mainScreen().bounds.size.height

func x(object : UIView) -> CGFloat {
    return object.frame.origin.x
}
func y(object : UIView) -> CGFloat {
    return object.frame.origin.y
}
func w(object : UIView) -> CGFloat {
    return object.frame.size.width
}
func h(object : UIView) -> CGFloat {
    return object.frame.size.height
}
func kFitWidth(value : CGFloat) -> CGFloat {
    return (kScreenWidth/750.0*value)
}
func kFitHeight(value : CGFloat) -> CGFloat {
    return kScreenWidth/1334.0*value
}
func FontSize(value : CGFloat) -> CGFloat {
    return (kScreenHeight/750*value)
}
func kFontSize(value : CGFloat) -> UIFont {
    return UIFont.systemFontOfSize(kScreenHeight/750*value)
}
func kBoldFitSize(value : CGFloat) -> UIFont {
    return UIFont.boldSystemFontOfSize(kScreenHeight/750*value)
}
func RGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor{
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}
extension UIColor {
    public func hexStringToColor(hexString: String) -> UIColor{
        var cString: String = hexString.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        
        if cString.characters.count < 6 {return UIColor.blackColor()}
        if cString.hasPrefix("0X") {cString = cString.substringFromIndex(cString.startIndex.advancedBy(2))}
        if cString.hasPrefix("#") {cString = cString.substringFromIndex(cString.startIndex.advancedBy(1))}
        if cString.characters.count != 6 {return UIColor.blackColor()}
        
        var range: NSRange = NSMakeRange(0, 2)
        
        let rString = (cString as NSString).substringWithRange(range)
        range.location = 2
        let gString = (cString as NSString).substringWithRange(range)
        range.location = 4
        let bString = (cString as NSString).substringWithRange(range)
        
        var r: UInt32 = 0x0
        var g: UInt32 = 0x0
        var b: UInt32 = 0x0
        NSScanner.init(string: rString).scanHexInt(&r)
        NSScanner.init(string: gString).scanHexInt(&g)
        NSScanner.init(string: bString).scanHexInt(&b)
        
        return UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: CGFloat(1))
        
    }
}

extension UIView {
    
    public func left() -> CGFloat{
        return self.frame.origin.x
    }
    public func top()-> CGFloat{
        return self.frame.origin.y
    }
    public func right() -> CGFloat{
        return self.frame.origin.x + self.frame.size.width
    }
    public func bottom() -> CGFloat{
        return self.frame.origin.y + self.frame.size.height
    }
    public func width() -> CGFloat{
        return self.frame.size.width
    }
    public func height() -> CGFloat{
        return self.frame.size.height
    }
}










