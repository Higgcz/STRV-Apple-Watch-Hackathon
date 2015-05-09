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
    
    var links = [Link]()
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let linksRequest = ["request": "downloadLinks"]
        
        WKInterfaceController.openParentApplication(linksRequest, reply: {
            (dic, error) -> Void in
            
            if let error = error {
                println(error.localizedDescription)
            }
            else if let downloadedLinks = dic?["links"] as? [Link] {
                self.links = downloadedLinks
            }
            
        })
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let numberOfRows = links.count
        
        table.setNumberOfRows(numberOfRows, withRowType: LinkRowTypeIdentifier)
        
        for row in 0..<numberOfRows {
            
            if let cell = table.rowControllerAtIndex(row) as? MainRowType {
                cell.link = links[row]
            }
            
        }
        
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
