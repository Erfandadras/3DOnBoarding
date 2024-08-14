//
//  Card.swift
//  OnBoardingScreen3D
//
//  Created by Erfan mac mini on 8/14/24.
//

import SwiftUI
import Foundation


struct Card: Identifiable {
    var id  = UUID()
    var title : String
    var description : String
    
}

var testData:[Card] = [

     
 Card(title: "L I K E", description: "this post"),

 Card(title: "C O M M E N T", description: "your questions"),
 
 Card(title: "S H A R E", description: "With Your Followers"),
 
 Card(title: "F O L L O W", description: "for more iOS App idias"),
 
 
]
