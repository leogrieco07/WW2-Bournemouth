//
//  ViewController2.swift
//  Bournemouth WW2 V2
//
//  Created by Leonardo Grieco (s5110005) on 05/12/2019.
//  Copyright © 2019 Leonardo Grieco (s5110005). All rights reserved.
//

import Foundation
import UIKit
import MapKit

class ViewController2: UIViewController {
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var MapView: MKMapView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        locationManager.requestAlwaysAuthorization()
        locationManager.delegate = self
        locationManager.startUpdatingLocation()
    
        
        
        
        let BealesCoordinate = CLLocationCoordinate2D (latitude: 50.72, longitude: -1.52)
    let BealesAnnotation = CustomAnnotataion(coordinate:BealesCoordinate , title: "Beales Hotel")
    
    mapView.addAnnotation(BealesAnnotation)
    
    
        let myCoordinate = CLLocationCoordinate2D(latitude: 0, longitude: 0)
        let myRegion = CLCircularRegion(center: myCoordinate, radius: 500, identifier: "Hello World")
        locationManager.startMonitoring(for: myRegion)
        
        
    }
}
