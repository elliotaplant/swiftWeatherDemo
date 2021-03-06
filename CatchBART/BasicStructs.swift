//
//  Stations.swift
//  CatchBART
//
//  Created by Elliot Plant on 6/7/16.
//  Copyright © 2016 Elliot Plant. All rights reserved.
//

import Foundation

struct Coord {
    var lat: Float
    var long: Float
}

struct Station {
    var name: String
    var abbr: String
    var coord: Coord
    mutating func clear() {
        name = ""
        abbr = ""
        coord = Coord(lat: 0, long: 0)
    }
}

struct TravelTimes {
    var driving: Int
    var walking: Int
    var running: Int
}

struct Destination {
    var name: String
    var times: Array<String>
    mutating func clear() {
        name = ""
        times = []
    }
}

enum ModeOfTransportation {
    case Driving
    case Walking
    case Running
}