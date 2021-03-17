//
//  USPresident.swift
//  CSCI-322-Assignment-4
//
//  Created by Eric Kirchman on 3/17/21.
//
// USPresident = MCUCharacter

import Foundation

class USPresident: Decodable {
    var name = ""
    var number = ""
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
    
    init(name: String, number: String, startDate: String, endDate: String, nickname: String, politicalParty: String) {
        self.name = name
        self.number = number
        self.startDate = startDate
        self.endDate = endDate
        self.nickname = nickname
        self.politicalParty = politicalParty
    }
 
}
