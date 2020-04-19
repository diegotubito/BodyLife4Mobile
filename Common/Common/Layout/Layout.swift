//
//  Layout.swift
//  Common
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit

open class Layout {
    static public let shared = Layout()
    
    static public func HideNavigationItem(navigation: UINavigationController) {
        navigation.setNavigationBarHidden(true, animated: false)
    }
    
    static public func DrawBackgroundGradient(view: inout UIView) {
        let color1 = Constants.Colors.BlueBodyLife.cgColor
        let color2 = UIColor.clear.cgColor
        let color3 = UIColor.black.cgColor
        let gradient = CAGradientLayer()
        gradient.colors = [color1, color2, color3]
        gradient.locations = [0, 0.5, 1]
        //  gradient.startPoint = CGPoint(x: 0.5, y: 0)
        //  gradient.endPoint = CGPoint(x: 0.5, y: 1)
        gradient.frame = view.frame
        view.layer.addSublayer(gradient)
    }
    
    static public func makeNavigationTransparent(viewcontroller: UIViewController) {
        viewcontroller.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default) //UIImage.init(named: "transparent.png")
        viewcontroller.navigationController?.navigationBar.shadowImage = UIImage()
        viewcontroller.navigationController?.navigationBar.isTranslucent = true
        viewcontroller.navigationController?.view.backgroundColor = .clear
    }
    
    static public func tabbarTransparent(tab: UITabBarController) {
        tab.tabBar.backgroundImage = UIImage()
        tab.tabBar.shadowImage = UIImage()
        tab.tabBar.isTranslucent = true
        
    }
    
}

