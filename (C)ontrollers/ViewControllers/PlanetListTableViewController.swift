//
//  PlanetListTableViewController.swift
//  SolarSystem2
//
//  Created by Xavier on 10/2/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return PlanetController.planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)
        let planet = PlanetController.planets[indexPath.row]
        
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = " \(planet.name) day length is \(planet.dayLength)"

        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC"{
            if let destinationVC = segue.destination as? PlanetDetailViewController{
                if let tappedIndex = tableView.indexPathForSelectedRow{
                    let planet = PlanetController.planets[tappedIndex.row]
                    destinationVC.planet = planet
                }
            }
        }
    }

}
