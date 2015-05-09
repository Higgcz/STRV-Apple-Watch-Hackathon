//
//  UIColorExt.swift
//  STRV Apple Watch Hackathon
//
//  Created by Naim Ashhab on 09.05.15.
//  Copyright (c) 2015 Naim Ashhab. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init ( rgbHex: Int ) {
        let red   = CGFloat (( rgbHex & 0xFF0000 ) >> 16) / 255.0
        let green = CGFloat (( rgbHex & 0x00FF00 ) >> 8)  / 255.0
        let blue  = CGFloat (( rgbHex & 0x0000FF ) >> 0)  / 255.0
        
        self.init ( red: red, green: green, blue: blue, alpha: 1.0 )
    }
    
    func lighterColor ( percent : Double ) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 + percent));
    }
    
    func darkerColor ( percent : Double ) -> UIColor {
        return colorWithBrightnessFactor(CGFloat(1 - percent));
    }
    
    func colorWithBrightnessFactor ( factor: CGFloat ) -> UIColor {
        var hue         : CGFloat = 0
        var saturation  : CGFloat = 0
        var brightness  : CGFloat = 0
        var alpha       : CGFloat = 0
        
        if getHue ( &hue, saturation: &saturation, brightness: &brightness, alpha: &alpha ) {
            return UIColor ( hue: hue, saturation: saturation / factor, brightness: brightness * factor, alpha: alpha )
        } else {
            return self;
        }
    }
}