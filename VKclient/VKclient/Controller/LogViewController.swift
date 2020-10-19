//
//  ViewController.swift
//  VKclient
//
//  Created by Macbook on 18.10.2020.
//  Copyright © 2020 Macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //MARK: -Seques
        func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
            guard identifier == "Friendslist" else {return true}
            let isValid = validateCredentials()
            if !isValid {
                showLoginErrorAlert()
            }
            return isValid
            }
        }
        //MARK: -Actions
        func scrollTApped(_sender: UIGestureRecognizer) {
            view.endEditing(true)
        }
        // MARK: - Helpers
        func validateCredentials() -> Bool {
            return loginTextField.text == "admin" && passwordTextField.text == "123"
        
        }
        func showLoginErrorAlert () {
            let alert = UIAlertController(title: "Ошибка",
                                           message:"Неправильный догин или пароль",
                                           preferredStyle: .alert)

            let action  = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert,animated:true,completion: nil)
        }
    }
    

