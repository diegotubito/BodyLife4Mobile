//
//  Constants.swift
//  Production
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//
import UIKit

struct Paths {
    static let sells = "users/\(UserID!)/sells"
    static let registers = "users/\(UserID!)/registers"
    static let payments = "users/\(UserID!)/payments"
    static let customerBrief = "users/\(UserID!)/customerBrief"
    static let customerFull = "customerFull"
    static let customerStatus = "customerStatus"
    static let fullPersonalData = "users/\(UserID!)/customerFull/personal"
    static let customerOriginalImage = "customer"
    static let productActivity = "product:service:activity"
    static let productDiscount = "product:service:discount"
    static let productType = "product:service:type"
    static let productService = "product:service"
    static let productArticle = "product:article"
}

extension Notification.Name {
          public static let DidLogin = Notification.Name(rawValue: "Login.DidLogin")
           public static let NotLogin = Notification.Name(rawValue: "Login.NotLogin")
    
    public struct Login {
    }
}
