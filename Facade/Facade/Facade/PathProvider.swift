//
//  PathProvider.swift
//  Facade
//
//  Created by Николай Прощалыкин on 26.03.2023.
//

import Foundation

class PathProvider {
    func createDestinationPath(filename: String) throws -> URL {
        guard let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            throw ImageSaverError.couldNotCreateDestinationPath
        }
        let destinationPath = path.appendingPathComponent("\(filename)")
        print(destinationPath)
        return destinationPath
    }
}
