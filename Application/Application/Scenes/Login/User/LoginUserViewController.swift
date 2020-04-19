//
//  LoginUserViewController.swift
//  Body Life Mobile
//
//  Created by David Diego Gomez on 15/02/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit
import Common

class LoginUserViewController: UIViewController {
    @IBOutlet weak var nextButtonOutlet: UIButton!
    @IBOutlet weak var userTextField: UITextField!
    override func viewDidLoad() {
        super .viewDidLoad()
        userTextField.delegate = self
        enableNextButton()
        Layout.DrawBackgroundGradient(view: &view)
        Layout.makeNavigationTransparent(viewcontroller: self)
        nextButtonOutlet.layer.cornerRadius = 10
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(true)
        userTextField.becomeFirstResponder()
    }
    
    
    @IBAction func nextPressed(_ sender: Any?) {
        performSegue(withIdentifier: "segue_login_password", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super .prepare(for: segue, sender: sender)
        
        let destination = segue.destination as! LoginPasswordView
        destination.viewModel = LoginPasswordViewModel(withView: destination, user: userTextField.text ?? "")
        
    }
    
    func validation() {
        if userTextField.text == nil {
            disableNextButton()
            return
        }
        if userTextField.text!.isEmpty {
            disableNextButton()
            return
        }
        enableNextButton()
    }
    
    private func disableNextButton() {
        nextButtonOutlet.isEnabled = false
        nextButtonOutlet.alpha = 0.3
    }
    
    private func enableNextButton() {
        nextButtonOutlet.isEnabled = true
        nextButtonOutlet.alpha = 1
    }
}


extension LoginUserViewController: UITextFieldDelegate {
    
}
