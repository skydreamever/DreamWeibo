//
//  LookupLocationViewController.swift
//  DreamWeibo
//
//  Created by 孙龙霄 on 2/3/15.
//  Copyright (c) 2015 孙龙霄. All rights reserved.
//

import UIKit
import CoreLocation

class LookupLocationViewController: UIViewController,BMKMapViewDelegate,BMKLocationServiceDelegate {

    var mapView:BMKMapView!
    var locationService:BMKLocationService!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "位置查询"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "退出", style: UIBarButtonItemStyle.Done, target: self, action: "exit")
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "确定", style: UIBarButtonItemStyle.Done, target: self, action: "done")
        
        setupLocationRequireService()
        
        mapView = BMKMapView()
        mapView.frame = self.view.bounds
        self.view.addSubview(mapView)
        mapView.delegate = self

        locationService = BMKLocationService()

        locationService.delegate = self
        
        startLocation()
        
        // Do any additional setup after loading the view.
    }

    

    func exit(){
        
    }
    
    func done(){
        
    }
    
    func setupLocationRequireService(){
        let manager = CLLocationManager()
        if CLLocationManager.authorizationStatus() == .NotDetermined {
            manager.requestAlwaysAuthorization()
        }

    }
    
    func startLocation(){
        locationService.startUserLocationService()
        mapView.showsUserLocation = false
        mapView.userTrackingMode = BMKUserTrackingModeFollowWithHeading
        mapView.showsUserLocation = true
    }
    
    func willStartLocatingUser() {
        NSLog("start locate")

    }
    
    func didUpdateUserHeading(userLocation: BMKUserLocation!) {
        mapView.updateLocationData(userLocation)
        NSLog("heading is %@",userLocation.heading)
    }
    
    func didStopLocatingUser() {
        NSLog("stop locate")

    }

    func didFailToLocateUserWithError(error: NSError!) {
        NSLog("location error:%@",error);

    }
    

}