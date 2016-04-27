//
//  TaskLocationViewController.swift
//  TickTask
//
//  Created by Michael Henke on 4/21/16.
//  Copyright © 2016 RJICompetition. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


let kSavedTasksKey = "savedTasks"

class TaskLocationViewController: UITableViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    @IBOutlet weak var zoomButton: UIBarButtonItem!
    
    @IBOutlet weak var eventTypeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var radiusTextField: UITextField!
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    
    override func viewDidLoad() {
        self.title = "Add Location"
        // 1
        locationManager.delegate = self
        // 2
        locationManager.requestAlwaysAuthorization()
    }
    
    
    
    
    
}
