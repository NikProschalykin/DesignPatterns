//
//  GoogleAuthenticationAdapter.swift
//  Adapter
//
//  Created by Николай Прощалыкин on 26.03.2023.
//

import Foundation

class GoogleAuthenticationAdapter: AuthentificationService {
    
    private var authenticator = GoogleAuthenticator()
    
    public func login(email: String,
               password: String,
               success: @escaping (User?, Token) -> Void,
               faiure: @escaping (Error?) -> Void) {
        
        authenticator.login(email: email, password: password, completion: { (currentUser, error) in
            
            guard let currentUser = currentUser else {
                faiure(error)
                return
            }
            
            let user = User(email: currentUser.email,
                            password: currentUser.password)
            
            let token = Token(value: currentUser.token)
            success(user, token)
        })
    }
    
    
}
