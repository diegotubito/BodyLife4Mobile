//
//  Router.swift
//  Production
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit

class Router {
    static let shared = Router()
    
    static func routeToTabBar(window: inout UIWindow?) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tabBar = storyboard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
    }
    
    static func routeToRealLogin(view: inout UIView) {
        let storyboard = UIStoryboard.init(name: "Login", bundle: nil)
        let nc = storyboard.instantiateViewController(withIdentifier: "LoginNavigationController") as! LoginNavigationController
        view.window?.rootViewController = nc
        view.window?.makeKeyAndVisible()
    }
  /*
    static func routeToSplash(window: inout UIWindow?) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SplashViewController") as? SplashViewController
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
    }
   */
    
    static func routeToLogin(window: inout UIWindow?) {
        print("routing to login")
        let storyboard = UIStoryboard.init(name: "Login", bundle: nil)
        let navigationController = storyboard.instantiateViewController(withIdentifier: "LoginNavigationController") as? LoginNavigationController
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    /*
    
    static func routeToHome(window: inout UIWindow?) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tabBar = storyboard.instantiateViewController(withIdentifier: "MyTabBarController") as? MyTabBarController
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
    }
    */
    /*
    
    static func routeToCustomer(window: inout UIWindow?) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tabBar = storyboard.instantiateViewController(withIdentifier: "MyTabBarController") as? MyTabBarController
        tabBar?.selectedIndex = 1
        
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
        
    }
 */
    /*
    static func routeToCustomerSecondViewController(window: inout UIWindow?) {
        let storyboard = UIStoryboard.init(name: "Main", bundle: nil)
        let tabBar = storyboard.instantiateViewController(withIdentifier: "MyTabBarController") as? MyTabBarController
        tabBar?.selectedIndex = 1
        
        window?.rootViewController = tabBar
        window?.makeKeyAndVisible()
        
        if let selectedNC = tabBar?.selectedViewController as? UINavigationController {
            let nextVC = storyboard.instantiateViewController(identifier: "NextCustomerViewController") as! NextCustomerViewController
            selectedNC.show(nextVC, sender: nil)
        }
        
    }
 */
    
}


