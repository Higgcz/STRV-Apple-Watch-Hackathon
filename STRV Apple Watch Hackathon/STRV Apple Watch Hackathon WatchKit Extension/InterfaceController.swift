//
//  InterfaceController.swift
//  STRV Apple Watch Hackathon WatchKit Extension
//
//  Created by Naim Ashhab on 09.05.15.
//  Copyright (c) 2015 Naim Ashhab. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var table: WKInterfaceTable!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let numberOfRows = 3
        
        table.setNumberOfRows(numberOfRows, withRowType: LinkRowTypeIdentifier)
        
        if let cell = table.rowControllerAtIndex(1) as? MainRowType {
            cell.linkDestinationPlace.setText("OSTRAVA HL. N.")
        }
        
//        
//        for row in 0..<numberOfRows {
//        
//            
//        }
        
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
