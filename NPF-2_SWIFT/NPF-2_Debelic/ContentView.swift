//
//  ContentView.swift
//  NPF-2_Debelic
//
//  Created by Marija Debelic on 18.10.2023..
//

import SwiftUI
import CoreLocation

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
    
    @State var parks: [Park] = []
    init() {
        //load data
        if let path = Bundle.main.path(forResource: "data", ofType: "plist") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let tempDict = try PropertyListSerialization.propertyList(from: data,
                                                                          format: nil) as! [String:Any]
                let tempArray = tempDict["parks"] as! Array<[String:Any]>
                
                var tempParks: [Park] = []
                for dict in tempArray {
                    let parkName = dict["parkName"]! as! String
                    let parkLocation = dict["parkLocation"]! as! String
                    let latitude = Double(dict["latitude"]! as! String)!
                    let longitude = Double(dict["longitude"]! as! String)!
                    let location = CLLocation(latitude: latitude, longitude: longitude)
                    let dateFormed = dict["dateFormed"]! as! String
                    let link = dict["link"]! as! String
                    let area = dict["area"]! as! String
                    let imageName = dict["imageName"]! as! String
                    let imageType = dict["imageType"]! as! String
                    let imageSize = dict["imageSize"]! as! String
                    let parkDescription = dict["description"]! as! String
                    // you get the rest of the values
                    // ...
                    //you need to provide all of the values from the plist and possibly modify the initializer with any new values...
                    let p = Park(_parkName: parkName, _parkLocation: parkLocation,
                                 _dateFormed: dateFormed, _area: area, _link: link, _location: location, _imageLink: link,
                                 _parkDescription: parkDescription, _imageName: imageName, _imageSize: imageSize, _imageType: imageType, _latitude: dict["latitude"]! as! String, _longitude: dict["longitude"]! as! String)
                    tempParks.append(p)
                }
                //check to see if the parks were created correctly
                for p in tempParks {
                    print("Park: \(p)")
                }
                //assign to state variable
                _parks = State(initialValue: tempParks)
            } catch {
                print(error)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
