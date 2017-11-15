//
//  ViewController.swift
//  whereAmI
//
//  Created by Cyberjaya 4 iTrain on 15/11/2017.
//  Copyright © 2017 ada_yc. All rights reserved.
//

import UIKit

import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var lbl_latitude: UILabel!
    @IBOutlet var lbl_longtitude: UILabel!
    @IBOutlet var lbl_address: UILabel!
    
    var myLocationManager: CLLocationManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
 
        //Initialise the Manager
        self.myLocationManager = CLLocationManager()
        
        //to able to use the implemented delegate method
        self.myLocationManager.delegate = self
        
        //Asking Permission
        self.myLocationManager.requestWhenInUseAuthorization()
        
        //Start to grab user location
        self.myLocationManager.startUpdatingLocation()
    }
    
    //whenever detect location, this will be triggered
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //Getting the lastest location from the set of results
        if let currentLocation = locations.last {

            //Display the result into the label
            self.lbl_latitude.text = "latitude is \(currentLocation.coordinate.latitude)"
            
        self.lbl_longtitude.text = "longtitude is \(currentLocation.coordinate.longitude)"
        }
       
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

