//
//  Park.swift
//  NPF-2_Debelic
//
//  Created by Marija Debelic on 18.10.2023..
//

import Foundation
import UIKit
import CoreLocation


class Park: CustomStringConvertible{
    
    private var parkName : String = ""
    private var parkLocation : String = ""
    private var dateFormed : String = ""
    private var area : String = ""
    private var link : String = ""
    private var location : CLLocation?
    private var imageLink: String = ""
    private var parkDescription: String = ""
    private var imageName: String = ""
    private var imageSize: String = ""
    private var imageType: String = ""
    private var latitude: String = ""
    private var longitude: String = ""
    
    
    func getParkName()->String {
        return parkName;
    }
    func getParkLocation()->String{
        return parkLocation;
    }
    func getDateFormed()->String{
        return dateFormed;
    }
    func getArea()->String{
        return area;
    }
    func getLink()->String{
        return link;
    }
    func getLocation()->CLLocation?{
        return location;
    }
    func getImageLink()->String{
        return imageLink;
    }
    func getParkDescription()->String{
        return parkDescription;
    }
    func getImageName()->String{
        return imageName;
    }
    func getImageSize()->String{
        return imageSize;
    }
    func getImageType()->String{
        return imageType;
    }
    func getLatitude()->String{
        return latitude;
    }
    func getLongitude()->String{
        return longitude;
    }
    
    func setParkName(name: String) {
        let temp = name.trimmingCharacters(in: .whitespaces);
        if(temp.count >= 3 && temp.count <= 75){
            self.parkName = temp;
        }else{
            self.parkName = "TBD";
            print("Error: The provided park name does not meet the length and non-space criteria.");
            
        }
    }
    
    func setParkLocation(value: String){
        let temp = value.trimmingCharacters(in: .whitespaces);
        if(temp.count >= 3 && temp.count <= 75){
            self.parkLocation = temp;
        }else{
            self.parkLocation = "TBD";
            print("Bad value of na in set(parkLocation): setting to TBD");
            
        }
    }
    
    func setArea(value: String){
        area = value;
    }
    func setDateFormed(value: String){
        dateFormed = value;
    }

    func setLink(value: String){
        link = value;
    }
    func setLocation(value: CLLocation?){
        location = value;
    }
    func setImageLink(value: String){
        imageLink = value;
    }
    func setParkDescription(value: String){
        parkDescription = value;
    }
    func setImageName(value: String){
        imageName = value;
    }
    func setImageSize(value: String){
        imageSize = value;
    }
    func setImageType(value: String){
        imageType = value;
    }
    func setLatitude(value: String){
        latitude = value;
    }
    func setLongitude(value: String){
        longitude = value;
    }
    
    init(_parkName: String, _parkLocation: String, _dateFormed: String, _area: String, _link: String, _location: CLLocation?, _imageLink: String, _parkDescription: String, _imageName: String, _imageSize: String, _imageType: String, _latitude: String, _longitude: String) {
        self.setParkName(name: _parkName);
        self.setParkLocation(value: _parkLocation);
        self.setDateFormed(value: _dateFormed);
        self.setArea(value: _area);
        self.setLink(value: _link);
        self.setLocation(value: _location);
        self.setImageLink(value: _imageLink);
        self.setParkDescription(value: _parkDescription);
        self.setImageName(value: _imageName);
        self.setImageSize(value: _imageSize);
        self.setImageType(value: _imageType);
        self.setLatitude(value: _latitude);
        self.setLongitude(value: _longitude);
    }
    convenience init () {
        self.init(_parkName: "Unknown", _parkLocation: "Unknown", _dateFormed: "Unknown",
                  _area: "Unknown", _link: "Unknown", _location: nil, _imageLink: "Unknown", _parkDescription: "Unknown", _imageName: "Unknown", _imageSize: "Unknown", _imageType: "Unknown", _latitude: "Unknown", _longitude: "Unknown")
    }
    
    var description: String{
        return " parkName: \(parkName)\n parkLocation: \(parkLocation)\n dateFormed: \(dateFormed)\n area: \(area)\n link: \(link)\n location: \(location)\n imageLink: \(imageLink)\n imageName: \(imageName)\n imageSize: \(imageSize)\n imageType: \(imageType)\n parkDescription: \(parkDescription)\n latitude: \(latitude)\n logitude: \(longitude)"
    }
    
}
