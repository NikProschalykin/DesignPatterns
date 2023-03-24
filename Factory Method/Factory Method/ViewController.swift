//
//  ViewController.swift
//  Factory Method
//
//  Created by Николай Прощалыкин on 20.03.2023.
//

import UIKit

class ViewController: UIViewController {

    var exerciseArray = [Exercise]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createExercise(exName: .jumping)
        runExercise()
        
        
    }

    func createExercise(exName: Exercises) {
        let newExercise = FactoryExercises.defaultFactory.createExercise(name: exName)
        exerciseArray.append(newExercise)
    }
    
    func runExercise() {
        for ex in exerciseArray {
            ex.start()
            sleep(2)
            ex.stop()
        }
    }
    
}

