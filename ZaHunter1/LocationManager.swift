//
//  LocationManager.swift
//  ZaHunter1
//
//  Created by James on 3/7/23.
//
import CoreLocation
import Foundation

class LocationManager: NSObject, CLLocationManagerDelegate, ObservableObject {
    var locationManager = CLLocationManager()
    var geocoder = CLGeocoder()
    override init() {
        super.init()
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
}
