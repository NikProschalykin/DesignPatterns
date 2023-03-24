//
//  Exercise.swift
//  Factory Method
//
//  Created by Николай Прощалыкин on 20.03.2023.
//

import UIKit

protocol Exercise {
    var name: String { get }
    var type: String { get }
    
    func start()
    func stop()
}
