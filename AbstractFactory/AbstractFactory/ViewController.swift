//
//  ViewController.swift
//  AbstractFactory
//
//  Created by Николай Прощалыкин on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {

    var chair: Chair?
    var table: Table?
    var sofa: Sofa?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func bedroomOrder(_ sender: Any) {
        chair = BedroomFactory().createChair()
        table = BedroomFactory().createTable()
        sofa = BedroomFactory().createSofa()
    }
    @IBAction func kitchenOrder(_ sender: Any) {
        chair = KitchenFactory().createChair()
        table = KitchenFactory().createTable()
        sofa = KitchenFactory().createSofa()
    }
    
}

