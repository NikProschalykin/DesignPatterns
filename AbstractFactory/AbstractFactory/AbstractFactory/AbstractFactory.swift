//
//  AbstractFactory.swift
//  AbstractFactory
//
//  Created by Николай Прощалыкин on 24.03.2023.
//

import Foundation

protocol AbstractFactory{
    func createChair() -> Chair
    func createSofa() -> Sofa
    func createTable() -> Table
}
