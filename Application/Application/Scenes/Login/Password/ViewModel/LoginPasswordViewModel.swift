//
//  LoginPasswordViewModel.swift
//  Body Life Mobile
//
//  Created by David Diego Gomez on 15/02/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit

class LoginPasswordViewModel: LoginPasswordViewModelContract {
    var model : LoginPasswordModel!
    var _view : LoginPasswordViewContract!
    
    required init(withView view: LoginPasswordViewContract, user: String) {
        model = LoginPasswordModel()
        model.username = user
        _view = view
    }
    
    func Login(password: String) {
        let email = model.username
        _view.showLoading()
        FirebaseManager.Authentication.shared.SignInWithEmail(email: email!, password: password, success: { (userResul) in
            self._view.hideLoading()
            self._view.showSuccess()
        }) { (error) in
            self._view.showError(error?.localizedDescription ?? "")
            self._view.hideLoading()
        }
    }
    
   
}
