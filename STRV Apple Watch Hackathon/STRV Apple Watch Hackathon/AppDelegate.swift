//
//  AppDelegate.swift
//  STRV Apple Watch Hackathon
//
//  Created by Naim Ashhab on 09.05.15.
//  Copyright (c) 2015 Naim Ashhab. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    // MARK: - Watch kit -
    
    func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply: (([NSObject : AnyObject]!) -> Void)!) {
        
        if let request = userInfo?["request"] as? String where request == "downloadLinks"  {
            
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
            
            reply(["links": downloadedLinks])
        }
        else {
            reply(nil)
        }
        
    }

}

