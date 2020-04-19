//
//  AppDelegate.swift
//  Application
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit
import Common
import FirebaseManager


var UserID : String?
var DateReference = "01-01-2020 00:00:00".toDate(formato: "dd-MM-yyyy HH:mm:ss")!

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        #if DEVELOP
        print("Develop")
        #else
        print("Production")
        #endif
    
        
        return true
    }


}

