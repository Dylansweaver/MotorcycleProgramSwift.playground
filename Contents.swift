import UIKit
import MapKit
import XCPlayground
import Foundation
//Manually Enter Destinations and stops here
var destinations: [[String:Any]] =
    [
        
        //Destination 1: California
        [
            "Destination": "California",//final destination
            "Stops": "McDonalds\n"+"Las Vegas",//stops along the way
            "Cost": 3000,//the cost in USD for the entire trip
            "Distance" : 500,//the total distance planned to travel one way
            "Bring": " Shorts\n T-Shirts\n Swimwear\n Sunblock"//checklist of things to bring along on the trip
        ],
        
        //Destination 2: Hawaii
        [
            "Destination":"Hawaii",
            "Stops": "Dunkin Donuts\n Ferry",
            "Cost": 5000,
            "Distance": 2000,
            "Bring": " Shorts\n T-Shirts\n Swimwear\n Sunblock\n Camera"
        ]
        //Add more Destiations here if Needed
];

//manually enter which Destination you want to see
//********************************************************************************
//*************************                        *******************************
//************************* ENTER DESTINATION HERE *******************************
//******************************               ***********************************
var choice = 1 //<<<<<<--------The Destination Number as seen in the List Displayed!
//********************************************************************************
var j=0;//intiating j for the for loop in the displaying of the Destinations
//-------------------------------------------------------------------------------------------------
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
print("Destinations!")                  //^^^^ This Displays
print("*************")                  //^^^^ the Destination
print(" ")                              //^^^^ List
let size = destinations.count           //^^^^
//^^^^
//^^^^
for i in 1...size                       //^^^^
{                                       //^^^^
    //^^^^
    print(j+1,". ",destinations[j]["Destination"]!)
    j++                                 //^^^^
}                                       //^^^^
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
//-------------------------------------------------------------------------------------------------
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
print(" ")                              //<<<< This Displays
print(" ")                              //<<<< the Stops along
print("Stops Along the Way to Destination")//< the Path of the
print("**********************************")//< Chosen Destination
//<<<<
print(destinations[choice - 1]["Stops"]!)//<<<
//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
//-------------------------------------------------------------------------------------------------
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
print(" ")                                //>>>> This Displays
print(" ")                                //>>>> what Items
print("Bring Along")                      //>>>> the User
print("***********")                      //>>>> Wants to
print(destinations[choice - 1]["Bring"]!) //>>>> Bring Along
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//-------------------------------------------------------------------------------------------------
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
print(" ")                                //~~~~ This Displays
print(" ")                                //~~~~ Cost of Trip
print("Other Trip Details")               //~~~~ and Estimated
print("******************")               //~~~~ Distance
print("$",destinations[choice - 1]["Cost"]!,//~~
    "Total Cost")                       //~~~~
print(destinations[choice - 1]["Distance"]!,//~~
    "Miles Total Distance")             //~~~~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





//||||||||||||||||||||||||||||||||MESSING WITH MAPKIT|||||||||||||||||||||
let finalPin = CLLocationCoordinate2DMake(34.0522342,-118.243)//this is to set the final location
let stop1 = CLLocationCoordinate2DMake(34.0822342,-118.343)

// set the zoom
let delta = 1.75//sets the zoom into the map


// set the size of the map
let frame = CGRect( x:0, y:0, width:400, height:400 )//creates the fram for the map to be displayed in
let mapView = MKMapView( frame: frame )//also for the frame


// create and populate a coordinate region struct
var region = MKCoordinateRegion()//for putting the location on the map
//region.center.latitude = 34.0522342 //if wanten to do lat/long seperate
//region.center.longitude = -118.243
region.center = finalPin //uses the location declared above


// span defines the zoom
region.span.latitudeDelta = delta
region.span.longitudeDelta = delta


// inform the mapView of these edits
mapView.setRegion( region, animated: true )


//annotations
let annotation2 = MKPointAnnotation()
annotation2.coordinate = stop1
annotation2.title = "Stop 1"
let annotation = MKPointAnnotation()
annotation.coordinate = finalPin
annotation.title = "Final Destination"
annotation.subtitle = "LA, CA"

mapView.addAnnotation(annotation2)
mapView.addAnnotation(annotation)
// view the map in the timeline!
XCPlaygroundPage.currentPage.liveView = mapView
