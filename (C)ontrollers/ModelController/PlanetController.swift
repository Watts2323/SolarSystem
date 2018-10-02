//
//  PlanetController.swift
//  SolarSystem2
//
//  Created by Xavier on 10/2/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import Foundation

class PlanetController {

    //initializing planet details in this code
    static var planets: [Planet] {
        let mercury = Planet(name: "Mercury", millionKMsFromSun: 57.9, dayLength: 4222.6, diameter: 4879)

        let venus = Planet(name: "Venus", millionKMsFromSun: 108.2, dayLength: 2802, diameter: 12104)

        let earth = Planet(name: "Earth", millionKMsFromSun: 149.6, dayLength: 24, diameter: 12756)

        let mars = Planet(name: "Mars", millionKMsFromSun: 227.9, dayLength: 24.7, diameter: 6792)

        let jupiter = Planet(name: "Jupiter", millionKMsFromSun: 778.6, dayLength: 9.9, diameter: 142984)

        let saturn = Planet(name: "Saturn", millionKMsFromSun: 1433.5, dayLength: 10.7, diameter: 120536)

        let uranus = Planet(name: "Uranus", millionKMsFromSun: 2872.5, dayLength: 17.2, diameter: 51118)

        let neptune = Planet(name: "Neptune", millionKMsFromSun: 4495.1, dayLength: 16.1, diameter: 49528)

        let pluto = Planet(name: "Pluto", millionKMsFromSun: 5906.4, dayLength: 153.3, diameter: 2370)

        return [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune, pluto]
    }

}
