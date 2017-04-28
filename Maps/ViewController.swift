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
        
    }

    

}

