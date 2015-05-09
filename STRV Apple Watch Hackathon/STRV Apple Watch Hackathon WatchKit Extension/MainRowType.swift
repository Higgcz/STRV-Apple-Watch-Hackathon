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
    
    @IBOutlet weak var linkTypeBanner: WKInterfaceGroup!
    @IBOutlet weak var linkDestinationPlace: WKInterfaceLabel!
    
    @IBOutlet weak var linkDepartureTime: WKInterfaceLabel!
    @IBOutlet weak var linkNumber: WKInterfaceLabel!
    
    @IBOutlet weak var linkPlatform: WKInterfaceLabel!
}
