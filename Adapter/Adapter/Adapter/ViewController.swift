//
//  ViewController.swift
//  Adapter
//
//  Created by Николай Прощалыкин on 26.03.2023.
//

import UIKit

class ViewController: UIViewController {

    var authService: AuthentificationService = GoogleAuthenticationAdapter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createUser(email: "asds@mail.ru", password: "XLASD8")
    }
        func createUser(email: String, password: String){
            authService.login(email: email, password: password, success: { (user,token) in
                print("Auth succeded: \(user!.email), \(token.value)")
            })
            { (error) in
                if let error = error {
                print(error.localizedDescription)
            }
            }
        }
}

