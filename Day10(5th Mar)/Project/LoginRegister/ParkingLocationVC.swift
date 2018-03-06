//
//  ParkingLocationVC.swift
//  LoginRegister
//
//  Created by MacStudent on 2018-03-02.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import MapKit

class ParkingLocationVC: UIViewController {

    @IBOutlet var myMapView: MKMapView!
    @IBOutlet var txtSelectedLocation: UITextField!
    @IBOutlet var pickerSlotNumber: UIPickerView!
    @IBOutlet var pickerLotNumber: UIPickerView!
    @IBOutlet var pickerTotalHours: UIPickerView!
    
 
    // Complete Payment
    @IBAction func btnCompletePaymentSelected(_ sender: UIButton) {
        
        
    
    }
    
    

    
    
    
    // MAP CONFIGURATION CODE STARTS...
    
    let regionRadius: CLLocationDistance = 500
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myMapView.mapType = MKMapType.standard
       

        // Do any additional setup after loading the view.
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        
        if (CLLocationManager.locationServicesEnabled()){
            locationManager.startUpdatingLocation()
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func centerMapOnLocation(location: CLLocation, title: String, subTitle: String){
        //get the location cordinates
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,regionRadius, regionRadius)
        
        //focus the map on specified location
        myMapView.setRegion(coordinateRegion, animated: true)
        
        // Drop a pin at user's Current Location
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude);
        myAnnotation.title = title
        myAnnotation.subtitle = subTitle
        //display pin on location
        myMapView.addAnnotation(myAnnotation)
        
        }
    }


    extension ParkingLocationVC: CLLocationManagerDelegate{
        
        func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
            print("error:: \(error.localizedDescription)")
        }
        
        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            
            if status == .authorizedWhenInUse {
                locationManager.requestLocation()
            }
        }
        
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
            
            if locations.first != nil {
                print("location:: \(locations)")
            }
            
            centerMapOnLocation(location: locationManager.location!, title: "Current Location", subTitle: " ")
        }
    }



