//
//  BedroomFactory.swift
//  AbstractFactory
//
//  Created by Николай Прощалыкин on 24.03.2023.
//

import Foundation

class BedroomFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Стул для спальни создан")
        return ChairBedroom()
    }
    
    func createSofa() -> Sofa {
        print("Диван для спальни создан")
        return SofaBedroom()
    }
    
    func createTable() -> Table {
        print("Стол для спальни создан")
        return CoffeTableBedroom()
    }
    
    
}
