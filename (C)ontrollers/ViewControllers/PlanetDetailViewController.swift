//
//  PlanetDetailViewController.swift
//  SolarSystem2
//
//  Created by Xavier on 10/2/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    @IBOutlet weak var planetNameLabel: UILabel!
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var actualDiameter: UILabel!
    @IBOutlet weak var actualDayLength: UILabel!
    @IBOutlet weak var actualKmsFromSun: UILabel!
    
    
    //Landing Pad
    var planet: Planet?
//    var image: [UIImage?] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UpdateViews()
    }
    
    func UpdateViews(){
        guard let unwrappedPlanet = planet else { return }
        planetNameLabel.text = unwrappedPlanet.name
        actualDiameter.text = "\(unwrappedPlanet.diameter)"
        actualDayLength.text = "\(unwrappedPlanet.dayLength)"
        actualKmsFromSun.text = "\(unwrappedPlanet.millionKMsFromSun)"
        planetImageView.image = UIImage(named: unwrappedPlanet.imageName)
    }

}
