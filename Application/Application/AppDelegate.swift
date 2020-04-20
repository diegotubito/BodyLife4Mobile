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
        
        AuthManager.shared.ListenAuthChanges()
        NotificationCenter.default.addObserver(self, selector: #selector(signOutHandler), name: .NotLogin, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(signInHandler), name: .DidLogin, object: nil)

    
        return true
    }
    
    @objc func signOutHandler() {
        Router.routeToLogin(window: &window)
    }
    
    @objc func signInHandler() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            Router.routeToTabBar(window: &self.window)
        }
        
        
    }
}

