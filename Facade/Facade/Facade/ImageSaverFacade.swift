//
//  ImageSaverFacade.swift
//  Facade
//
//  Created by Николай Прощалыкин on 26.03.2023.
//

import UIKit

class ImageSaverFacade {
    private let pathProvider = PathProvider()
    private let dataProvider = ImageDataProvider()
    
    public func save(image: UIImage,type: ImageType, fileName: String, overwrite: Bool) throws {
        let destinationURL = try pathProvider.createDestinationPath(filename: fileName)
        let imageData = try dataProvider.data(from: image, type: type)
        let writeOptions: Data.WritingOptions = overwrite ? (.atomic) : (.withoutOverwriting)
        try imageData.write(to: destinationURL, options: writeOptions)
    }
}
