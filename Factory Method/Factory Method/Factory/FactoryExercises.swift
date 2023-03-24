//
//  FactoryExercises.swift
//  Factory Method
//
//  Created by Николай Прощалыкин on 20.03.2023.
//

import UIKit

enum Exercises {
    case jumping, squarts
}

class FactoryExercises {
    static let defaultFactory = FactoryExercises()
    
    func createExercise(name: Exercises) -> Exercise {
        switch name {
        case .squarts: return Squarts()
        case .jumping: return Jumping()
        }
    }
    
}
