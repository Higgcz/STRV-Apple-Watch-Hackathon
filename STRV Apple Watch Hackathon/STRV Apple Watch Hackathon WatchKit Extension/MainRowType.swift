//
//  MainRowType.swift
//  STRV Apple Watch Hackathon
//
//  Created by Naim Ashhab on 09.05.15.
//  Copyright (c) 2015 Naim Ashhab. All rights reserved.
//

import UIKit
import WatchKit

let LinkRowTypeIdentifier = "LinkRowType"

class MainRowType: NSObject {
    
    @IBOutlet weak private var linkTypeBanner:       WKInterfaceGroup!
    @IBOutlet weak private var linkDestinationPlace: WKInterfaceLabel!
    @IBOutlet weak private var linkDepartureTime:    WKInterfaceLabel!
    @IBOutlet weak private var linkNumber:           WKInterfaceLabel!
    @IBOutlet weak private var linkPlatform:         WKInterfaceLabel!
    
    var link: Link! {
        didSet {
            setupLinkInformations(link)
        }
    }
    
    func setupLinkInformations(link: Link) {
        
        linkTypeBanner.setBackgroundColor(UIColor(rgbHex: link.type.colorHex))
        linkDestinationPlace.setText(link.destinationPlace)
        linkNumber.setText(link.number)
        linkPlatform.setText(link.platform)
        linkDepartureTime.setText(link.departureTime)
        
        if link.delay != 0 {
            
            var departureTime = NSMutableAttributedString(string: link.departureTime)
            let delay = NSAttributedString(string: " (+\(link.delay)m)", attributes: [NSForegroundColorAttributeName: UIColor(rgbHex: 0xD84C43)])
            departureTime.appendAttributedString(delay)
            linkDepartureTime.setAttributedText(departureTime)
            
        }
        
    }
    
}
