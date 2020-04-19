//
//  ViewController.swift
//  Application
//
//  Created by David Diego Gomez on 19/04/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit
import Common

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        #if DEVELOP
            print("Develop")
        #else
            print("Production")
        #endif
    }

}

