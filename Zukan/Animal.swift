//
//  Animal.swift
//  Zukan
//
//  Created by 鈴木廉太郎 on 2024/11/23.
//

import UIKit

class Animal {
    var name: String
    var details: String
    var imageName: String
    
    init(name: String, details: String,imageName: String) {
        self.name = name
        self.details = details
        self.imageName = imageName
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
    
    
        
    }
    
    

