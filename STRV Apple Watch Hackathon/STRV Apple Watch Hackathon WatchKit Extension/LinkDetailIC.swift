//
//  LinkDetailIC.swift
//  STRV Apple Watch Hackathon
//
//  Created by Naim Ashhab on 09.05.15.
//  Copyright (c) 2015 Naim Ashhab. All rights reserved.
//

import WatchKit
import Foundation

class LinkDetailIC: WKInterfaceController {
    
    var link: Link!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        if let linkToSet = context as? Link {
            link = linkToSet
        }
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
