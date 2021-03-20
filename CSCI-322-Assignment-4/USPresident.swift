//
//  USPresident.swift
//  CSCI-322-Assignment-4
//
//  Created by Eric Kirchman Z1864162 and Dan Hufford Z1864126 on 3/17/21.
//
// USPresident = MCUCharacter

import Foundation

class USPresident: Decodable {
    var name = ""
    var number = 0
    var startDate = ""
    var endDate = ""
    var nickname = ""
    var politicalParty = ""
    
    
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case number = "Number"
        case startDate = "Start Date"
        case endDate = "End Date"
        case nickname = "Nickname"
        case politicalParty = "Political Party"

    }
    /**
         # init
    
         This function initializes a USPresident object to hold all the values we want to show on the details ViewController
    
          **Parameters:**
    
         name: String  //president's full name
         number: Int,   //The ordinal number in which they were signed into office
         startDate: String, //the first day they started as president
         endDate: String,  //the last day they ended as president
         nickname: String, //Their nickname, if any
         politicalParty: String //Which political party they were afilicated with
    
           **Returns:** Nothing
    
            **Notes:**
    
         */
    init(name: String, number: Int, startDate: String, endDate: String, nickname: String, politicalParty: String) {
        self.name = name
        self.number = number
        self.startDate = startDate
        self.endDate = endDate
        self.nickname = nickname
        self.politicalParty = politicalParty
    }
 
}
