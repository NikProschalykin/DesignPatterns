//
//  AuthentificationService.swift
//  Adapter
//
//  Created by Николай Прощалыкин on 26.03.2023.
//

import Foundation

public struct User {
    public let email: String
    public let password: String
}

public struct Token {
    public let value: String
}

public protocol AuthentificationService {
    func login(email: String,
               password: String,
               success: @escaping (User?, Token) -> Void,
               faiure: @escaping (Error?) -> Void)
}
