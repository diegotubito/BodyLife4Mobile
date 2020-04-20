//
//  ServiceManager.swift
//  FirebaseManager
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import Foundation
import Firebase

extension Notification.Name {
    public static let DidLogin = Notification.Name(rawValue: "Login.DidLogin")
    public static let NotLogin = Notification.Name(rawValue: "Login.NotLogin")

    
    public struct Login {
    }
}



open class AuthManager {
    public init() {
        FirebaseApp.configure()
        
    }
    
    
    static public let shared = AuthManager()
    static private var authListener : AuthStateDidChangeListenerHandle!
    static public var userData : User?
    static public var userID : String?
    
    public func ListenAuthChanges() {
        AuthManager.authListener = Auth.auth().addStateDidChangeListener() { auth, user in
            AuthManager.userData = user
            AuthManager.userID = user?.uid
            if user == nil {
                print("no hay usuario autenticado")
                NotificationCenter.default.post(name: .NotLogin, object: nil)
                
            } else {
                NotificationCenter.default.post(name: .DidLogin, object: nil)
                
                print("you are logged in \(String(describing: user?.uid))")
            }
        }
    }
    
    
    public func RegisterNewUser(email: String, password: String, success: @escaping (AuthDataResult?) -> Void, fail: @escaping (Error) -> Void) {
        
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if error != nil {
                fail(error!)
                return
            }
            
            success(user)
            
        }
    }
    
    public func SignOut() {
        do {
            try Auth.auth().signOut()
        } catch {
            return
        }
    }
    
    public func SignInWithEmail(email: String, password: String, success: @escaping (AuthDataResult?) -> Void, fail: @escaping (Error?) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (usuario, error) in
            if error != nil {
                fail(error)
                return
            }
            
            success(usuario)
        }
    }
    
    
    
    public func GetUserByEmail(email: String, success: @escaping ([String]?) -> Void, fail: @escaping (Error?) -> Void) {
        Auth.auth().fetchProviders(forEmail: email) { (response, error) in
            if error != nil {
                fail(error)
                return
            }
            
            if response == nil {
                fail(nil)
                return
            }
            
            success(response)
        }
    }
    
}
