//
//  ViewController.swift
//  Day8MapLocation
//
//  Created by MacStudent on 2018-03-01.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController{

    @IBOutlet weak var myMap: MKMapView!
    
    let locationManager = CLLocationManager()
    let regionRadius: CLLocationDistance = 500
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myMap.mapType = MKMapType.standard
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        
        if (CLLocationManager.locationServicesEnabled()){
            locationManager.startUpdatingLocation()
        }
        
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

extension ViewController: CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error: : \(error.localizedDescription)")
    }
    
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locationManager.requestLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if locations.first != nil{
            print("location: :\(locations)")
        }
        
        centerMapOnLocation(location: locationManager.location!, title: "Current Location", subTitle: " ")
    }
    
}
