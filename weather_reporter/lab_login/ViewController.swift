//
//  ViewController.swift
//  weather_reporter
//
//  Created by Thenea on 5/12/19.
//  Copyright © 2019 Thenea. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         
    }
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Ask for Authorisation from the User.
    }
}

