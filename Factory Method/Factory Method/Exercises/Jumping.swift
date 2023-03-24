//
//  Jumping.swift
//  Factory Method
//
//  Created by Николай Прощалыкин on 20.03.2023.
//

import UIKit

class Jumping: Exercise {
    var name: String = "Прыжки"
    
    var type: String = "Упражнение для ног"
    
    func start() {
        print("Начинаем прыжки")
    }
    
    func stop() {
        print("Заканчиваем прыжк")
    }
    
}
