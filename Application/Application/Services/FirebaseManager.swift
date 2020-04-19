//
//  FirebaseManager.swift
//  Production
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit
/*
struct FirebaseManager {
    struct Authentication {
        static let shared = Authentication()
        static private var authListener : AuthStateDidChangeListenerHandle!
        static var userData : User?
        
        func ListenAuthChanges() {
            FirebaseManager.Authentication.authListener = Auth.auth().addStateDidChangeListener() { auth, user in
                FirebaseManager.Authentication.userData = user
                UserID = user?.uid
                if user == nil {
                    print("no hay usuario autenticado")
                    NotificationCenter.default.post(name: .NotLogin, object: nil)
                } else {
                    print("you are logged in \(String(describing: user?.uid))")
                    NotificationCenter.default.post(name: .DidLogin, object: nil)
                }
            }
        }
        
        
        func RegisterNewUser(email: String, password: String, success: @escaping (AuthDataResult?) -> Void, fail: @escaping (Error) -> Void) {
            
            Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
                if error != nil {
                    fail(error!)
                    return
                }
                
                success(user)
                
            }
        }
        
        func SignOut(success: () -> Void, fail: () -> Void) {
            do {
                try Auth.auth().signOut()
                success()
            } catch {
                fail()
                return
            }
        }
        
        func SignInWithEmail(email: String, password: String, success: @escaping (AuthDataResult?) -> Void, fail: @escaping (Error?) -> Void) {
            Auth.auth().signIn(withEmail: email, password: password) { (usuario, error) in
                if error != nil {
                    fail(error)
                    return
                }
                
                success(usuario)
            }
        }
        
        
        
        func GetUserByEmail(email: String, success: @escaping ([String]?) -> Void, fail: @escaping (Error?) -> Void) {
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
}

*/
