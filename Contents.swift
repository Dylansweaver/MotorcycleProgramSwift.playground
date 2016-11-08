//: Playground - noun: a place where people can play

import UIKit


//Manually Enter Destinations here
var destinations: [String] =
    [
        "California",
        "Chicago",
        "Taco Bell"

];




var j=0;

print("Destinations!")
print("*************")
print(" ")
let size = destinations.count
for i in 1...size
{
    
print(j+1,". ",destinations[j]);
    j++
}

var destinationSelection = 0;//Enter which destination to focus on

