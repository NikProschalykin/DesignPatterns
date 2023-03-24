//
//  Settings.swift
//  Singleton
//
//  Created by Николай Прощалыкин on 18.03.2023.
//

import UIKit

class Settings {
    static let shared = Settings()
    
    var colorStyle = UIColor.white
    var volumeLevel: Float = 1.0
    
    private init() {}
}
