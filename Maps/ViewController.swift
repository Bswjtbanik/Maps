//
//  ViewController.swift
//  Maps
//
//  Created by Muhaimin Habib on 4/28/17.
//  Copyright © 2017 BiswajitBanik. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController ,MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        
        
        let lat : CLLocationDegrees = 23
        let lon : CLLocationDegrees = 90
        
        let latDelta : CLLocationDegrees = 0.5
        let lonDelta : CLLocationDegrees = 0.5
        
        let span : MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let location : CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: lat, longitude: lon)
        
        let region : MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.title = "Mirpur"
        annotation.subtitle = "Dhaka , Bangladesh"
        annotation.coordinate = location
        mapView.addAnnotation(annotation)
        
        
    }

    

}

