//
//  HomeViewController.swift
//  Application
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit
import FirebaseManager

class HomeViewController : UIViewController {
    @IBOutlet weak var userLabel: UILabel!
    override func viewDidLoad() {
        super .viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super .viewWillAppear(true)
        
        userLabel.text = "Usuario: \(AuthManager.userData?.displayName ?? "") - UID: \(AuthManager.userData?.uid ?? "")"
        
    }
    @IBAction func logOut(_ sender: Any) {
        AuthManager.shared.SignOut()
    }
}
