//
//  TwitterAuthentication.swift
//  Adapter
//
//  Created by Николай Прощалыкин on 26.03.2023.
//

import Foundation

public struct TwitterUser{
    public var email: String
    public var password: String
    public var token: String
}

public class TwitterAuthentication {
    public func login(
    email: String,
    password: String,
    completion: @escaping(TwitterUser?,Error?) -> Void){
        let token = "special-token-value"
        let user = TwitterUser(email: email, password: password, token: token)
        
    completion(user,nil)
    }
}
