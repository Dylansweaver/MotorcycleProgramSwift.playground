//: Playground - noun: a place where people can play

import UIKit


//Manually Enter Destinations and stops here
var destinations: [[String:Any]] =
    [
        [
            "Destination": "California",
            "Stops": "McDonalds\n"+"Las Vegas"
            
        ],
        [
            "Destination":"Hawaii",
            "Stops": "Dunkin Donuts\n"+"Ferry"
        ]
];


//************************************

//manually enter which Destination you want to see stops for
var choice = 1
//*****************************


var j=0;

print("Destinations!")
print("*************")
print(" ")
let size = destinations.count


for i in 1...size
{

print(j+1,". ",destinations[j]["Destination"]!)
    j++
}

print(" ")
print(" ")
print("Stops Along the Way to Destination")
print("**********************************")

print(destinations[choice - 1]["Stops"]!)
