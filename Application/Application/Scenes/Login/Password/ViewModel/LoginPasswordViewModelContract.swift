//
//  LoginPasswordViewModelContract.swift
//  Body Life Mobile
//
//  Created by David Diego Gomez on 15/02/2020.
//  Copyright © 2020 David Diego Gomez. All rights reserved.
//

import UIKit

protocol LoginPasswordViewModelContract {
    init(withView view: LoginPasswordViewContract, user: String)
    func Login(password: String)
}

protocol LoginPasswordViewContract {
    func showLoading()
    func hideLoading()
    func showSuccess()
    func showError(_ message: String)
}
