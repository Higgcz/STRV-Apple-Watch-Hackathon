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
        
        let downloadedLinks = [
            Link(
                place: "BENEŠOV U PRAHY",
                type: LinkType(type: 0),
                time: "16:07",
                number: "2549",
                platform: "4S",
                delay: 0),
            Link(
                place: "BRNO HL.N.",
                type: LinkType(type: 2),
                time: "16:12",
                number: "987",
                platform: "7",
                delay: 10),
            Link(
                place: "TŘINEC",
                type: LinkType(type: 1),
                time: "16:15",
                number: "155",
                platform: "5S",
                delay: 0),
            Link(
                place: "PRAHA AIRPORT",
                type: LinkType(type: 3),
                time: "16:20",
                number: "41",
                platform: "B1",
                delay: 0),
            Link(
                place: "PRAHA-VRŠOVICE",
                type: LinkType(type: 0),
                time: "16:23",
                number: "S3 9513",
                platform: "1J",
                delay: 0)]
        
        links = downloadedLinks
        
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
    
    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        
        let link = links[rowIndex]
        pushControllerWithName("LinkDetail", context: link)
        
    }
    
    
}
