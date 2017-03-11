//
//  ViewController.swift
//  Displaying Traffic, Scale and Compass Indicators on the Map
//
//  Created by Vandad on 7/4/15.
//  Copyright © 2015 Pixolity. All rights reserved.
//

import UIKit
import MapKit
import SharedCode

class ViewController: UIViewController, MKMapViewDelegate {
  
  @IBOutlet var map: MKMapView!
  
  let identifier = "pin"
  let color = UIColor(red: 0.4, green: 0.8, blue: 0.6, alpha: 1.0)
  let location = CLLocationCoordinate2D(latitude: 59.33, longitude: 18.056)
  
  lazy var annotations: [MKAnnotation] = {
    return [Annotation(coordinate: self.location,
                       title: "Stockholm Central Station",
                       subtitle: "Stockholm, Sweden")]
  }()
  
  func mapView(_ mapView: MKMapView,
               viewFor annotation: MKAnnotation) -> MKAnnotationView? {
    
    let view: MKPinAnnotationView
    if let v = mapView.dequeueReusableAnnotationView(
      withIdentifier: identifier) as? MKPinAnnotationView{
      view = v
    } else {
      view = MKPinAnnotationView(annotation: annotation,
                                 reuseIdentifier: identifier)
    }
    
    view.pinTintColor = UIColor.blue
    
    return view
    
  }
  
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    map.removeAnnotations(annotations)
    map.addAnnotations(annotations)
    
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    map.showsCompass = true
    map.showsTraffic = true
    map.showsScale = true
    
  }
  
}

