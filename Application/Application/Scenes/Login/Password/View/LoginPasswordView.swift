//
//  LoginPasswordView.swift
//  Body Life Mobile
//
//  Created by David Diego Gomez on 15/02/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit
import Common

class LoginPasswordView: UIViewController, LoginPasswordViewContract {
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    var viewModel : LoginPasswordViewModelContract!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        passwordTextField.delegate = self
        Layout.DrawBackgroundGradient(view: &view)
        Layout.makeNavigationTransparent(viewcontroller: self)
        passwordTextField.becomeFirstResponder()
        loginButtonOutlet.layer.cornerRadius = 10
        errorLabel.isHidden = true
    }
    
    func showLoading() {
        DispatchQueue.main.async {
            self.myActivityIndicator.startAnimating()
        }
    }
    
    func hideLoading() {
        DispatchQueue.main.async {
            self.myActivityIndicator.stopAnimating()
        }
        
    }
    
    func showSuccess() {
        DispatchQueue.main.async {
            self.errorLabel.isHidden = false
            self.errorLabel.text = "Autorizado"
            self.errorLabel.textColor = .green
            
        }
    }
    
    func showError(_ message: String) {
        DispatchQueue.main.async {
            self.enableLoginButton()
            self.passwordTextField.isEnabled = true
            
            
            self.errorLabel.isHidden = false
            self.errorLabel.text = message
            self.errorLabel.textColor = .red
        }
    }
    
    @IBAction func loginPressed(_ sender: Any?) {
        self.disableLoginButton()
        self.passwordTextField.isEnabled = false
        errorLabel.text = ""
        
        viewModel.Login(password: passwordTextField.text ?? "")
    }
    
    func validate() -> Bool {
        return true
    }
    
    private func disableLoginButton() {
        loginButtonOutlet.isEnabled = false
        loginButtonOutlet.alpha = 0.3
    }
    
    private func enableLoginButton() {
        loginButtonOutlet.isEnabled = true
        loginButtonOutlet.alpha = 1
    }
}


extension LoginPasswordView: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        loginPressed(nil)
        return true
    }
}
