//
//  Planet.swift
//  SolarSystem2
//
//  Created by Xavier on 10/2/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import Foundation

class Planet {
    let name: String
    let millionKMsFromSun: Float
    let dayLength: Float
    let imageName: String
    let diameter: Int
    
    init(name: String, millionKMsFromSun: Float, dayLength: Float, diameter: Int){
        self.name = name
        self.millionKMsFromSun = millionKMsFromSun
        self.dayLength = dayLength
        self.imageName = name.lowercased()
        self.diameter = diameter
    }
}
