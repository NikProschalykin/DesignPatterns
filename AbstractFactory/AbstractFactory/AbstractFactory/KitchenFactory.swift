//
//  KitchenFactory.swift
//  AbstractFactory
//
//  Created by Николай Прощалыкин on 24.03.2023.
//

import Foundation

class KitchenFactory: AbstractFactory {
    func createChair() -> Chair {
        print("Стул для кухни создан")
        return ChairKitchen()
    }
    
    func createSofa() -> Sofa {
        print("Диван для кухни создан")
        return SofaKitchen()
    }
    
    func createTable() -> Table {
        print("Стол для кухни создан")
        return TableKitchen()
    }
    
    
}
