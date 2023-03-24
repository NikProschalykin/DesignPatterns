//
//  ViewController.swift
//  Singleton
//
//  Created by Николай Прощалыкин on 18.03.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(Settings.shared.volumeLevel)
        
        Settings.shared.volumeLevel = 2.0
        
        print(Settings.shared.volumeLevel)
    }


}

