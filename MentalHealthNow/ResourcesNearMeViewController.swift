//
//  ResourcesNearMeViewController.swift
//  MentalHealthNow
//
//  Created by Khidr Brinkley on 4/3/21.
//
import MapKit
import CoreLocation
import UIKit

class ResourcesNearMeViewController: UIViewController, MKMapViewDelegate {
    

    @IBAction func BackButton1Pressed(_ sender: Any) {
        print("Back button 1 Pressed!")
        self.performSegue(withIdentifier: "backbutton1segue", sender: self)
    }
    
    @IBOutlet weak var mapView: MKMapView!
    
    
    fileprivate let locationManager: CLLocationManager = CLLocationManager()
    
    func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {

        if let annotationView = views.first {
            if let annotation = annotationView.annotation {
                if annotation is MKUserLocation {

                    let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 100, longitudinalMeters: 100)
                    mapView.setRegion(region, animated: true)

                }
            }
        }

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    }
}
