//
//  ViewController.swift
//  Lab5b_v2
//
//  Created by mjk3ll3y on 3/10/18.
//  Copyright © 2018 Kulm. All rights reserved.
//

import Mapbox

class ViewController: UIViewController, MGLMapViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let mapView = MGLMapView(frame: view.bounds)
        mapView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Set the map’s center coordinate and zoom level. Centered on New Orleans
        mapView.setCenter(CLLocationCoordinate2D(latitude: 29.9511, longitude: -90.0715), zoomLevel: 9, animated: false)
        view.addSubview(mapView)
        
        // Set the delegate property of our map view to `self` after instantiating it.
        mapView.delegate = self
        
        // Declare the marker `hello` and set its coordinates, title, and subtitle.
        let hello = MGLPointAnnotation()
        hello.coordinate = CLLocationCoordinate2D(latitude: 29.9511, longitude: -90.0715)
        hello.title = "AAG!"
        hello.subtitle = "Here we come!"
        
        // Add marker `hello` to the map.
        mapView.addAnnotation(hello)
    }
    
    // Use the default marker. See also: our view annotation or custom marker examples.
    func mapView(_ mapView: MGLMapView, viewFor annotation: MGLAnnotation) -> MGLAnnotationView? {
        return nil
    }
    
    // Allow callout view to appear when an annotation is tapped.
    func mapView(_ mapView: MGLMapView, annotationCanShowCallout annotation: MGLAnnotation) -> Bool {
        return true
    }
}
