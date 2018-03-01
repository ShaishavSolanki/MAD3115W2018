//
//  ViewController.swift
//  Maps
//
//  Created by MacStudent on 2018-03-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMap: MKMapView!
    
    
    let lambtonCollegeLocation = CLLocation(latitude: 43.773257, longitude: -79.335899)
    
    let regionRadius: CLLocationDistance = 50
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        myMap.mapType = MKMapType.standard
        self.centerMapOnLocation(location: lambtonCollegeLocation, title: "Lambton College", subTitle: "265 Yorkland Blvd")
    }

    
    func centerMapOnLocation(location: CLLocation,title: String, subTitle: String){
        //get location coordinates
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        
        //focus the map on specified location
        
        myMap.setRegion(coordinateRegion, animated: true)
        
        
        //Drop a pin at users Current Location
        let myAnnotaiton: MKPointAnnotation = MKPointAnnotation()
        myAnnotaiton.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        myAnnotaiton.title = title
        myAnnotaiton.subtitle = subTitle
        
        //display pin on location
        myMap.addAnnotation(myAnnotaiton)
 
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

