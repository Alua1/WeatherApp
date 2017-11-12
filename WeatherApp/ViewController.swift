//
//  ViewController.swift
//  WeatherApp
//
//  Created by Saulebekov Azamat on 29.10.17.
//  Copyright © 2017 Alua. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate {
 
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var conditionLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var degreeLbl: UILabel!
    
    var degree:Int!
    var condition: String!
    var imgURL: String!
    var city:String!
    
    var weather: Weather!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        DataManager.shared.getWeatherByCity(city: searchBar.text!) { (object, error) in
            if object != nil {
                self.weather = object
                self.cityLbl.text = self.weather.name
                self.degreeLbl.text = (self.weather.main.temp - 273).forTailingZero() + "°C"
                print(self.degreeLbl.text)
                print(self.weather.name, self.weather.main.temp.description)
            }
        }
    }
    
    

}

