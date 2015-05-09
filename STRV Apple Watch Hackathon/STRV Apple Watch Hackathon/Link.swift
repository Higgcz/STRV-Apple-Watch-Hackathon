//
//  Link.swift
//  STRV Apple Watch Hackathon
//
//  Created by Naim Ashhab on 09.05.15.
//  Copyright (c) 2015 Naim Ashhab. All rights reserved.
//

import UIKit

struct LinkType {
    
    var shortcut: String
    var colorHex: Int
    
    init() {
        shortcut = "OS"
        colorHex = 0x37EF75
    }
    
    init(type: Int) {
        
        switch type {
        
        case 0:
            shortcut = "OS"
            colorHex = 0xA5ADB8
            break
            
        case 1:
            shortcut = "EC"
            colorHex = 0x12A1FF
            break
            
        case 2:
            shortcut = "R"
            colorHex = 0xFF2F57
            break
            
        case 3:
            shortcut = "B"
            colorHex = 0x37EF75
            break
            
        default:
            shortcut = "OS"
            colorHex = 0xA5ADB8
            break
            
        }
        
    }
    
}

class Link: NSObject {
    
    var destinationPlace: String!
    var type:             LinkType!
    var departureTime:    String!
    var number:           String!
    var platform:         String?
    var delay:            Int!
    
    init(place: String, type: LinkType, time: String, number: String, platform: String, delay: Int = 0) {
        
        self.destinationPlace = place
        self.type             = type
        self.departureTime    = time
        self.number           = number
        self.platform         = platform
        self.delay            = delay
        
    }
    
}
