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

protocol TaskLocationViewControllerDelegate {
    func addTaskLocationViewController(controller: TaskLocationViewController, didAddCoordinate coorindate: CLLocationCoordinate2D, radius: CLLocationDistance, eventType: EventType, identifier: String)
}

class TaskLocationViewController: UITableViewController {
    
    var task: Task?
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    @IBOutlet weak var zoomButton: UIBarButtonItem!
    
    @IBOutlet weak var eventTypeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var radiusTextField: UITextField!
    
    @IBOutlet weak var mapView: MKMapView!
    
    var delegate: TaskLocationViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add Location"
    }
    
    @IBAction func onAdd(sender: AnyObject) {
        let coordinate = mapView.centerCoordinate
        let radius = (radiusTextField.text! as NSString).doubleValue
        let identifier = NSUUID().UUIDString
        let eventType = (eventTypeSegmentedControl.selectedSegmentIndex == 0) ? EventType.OnEntry : EventType.OnExit
        delegate!.addTaskLocationViewController(self, didAddCoordinate: coordinate, radius: radius, eventType: eventType, identifier: identifier)
        
        
    }
    
    
    
    
    
    
    
}
