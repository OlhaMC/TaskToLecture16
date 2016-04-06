//
//  PointExtention.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

extension Point {
    

    init(withCartesianCoordinates: CartesianCoordinates) {
        self.init(x: withCartesianCoordinates.xCoord, y: withCartesianCoordinates.yCoord)
    }
    
    init(withPolarCoordinates: PolarCoordinates) {
        self.init(radius: withPolarCoordinates.radiusCoord, angleInRadians: withPolarCoordinates.angleCoord)
    }
    
    static func makePointWithXandY(firsNumber: Double, _ secondNumber: Double)->Point {
        return Point(x: firsNumber, y: secondNumber)
    }
    
    static func makePointWithRadius(radius length: Double, angleInRadians radAngle: Double)->Point {
        return Point(radius: length, angleInRadians: radAngle)
    }
    
    static func makePointWithCartesianCoordinates(coordinates: CartesianCoordinates)->Point {
        return Point(withCartesianCoordinates: coordinates)
    }
    
    static func makePointWithPolarCoordinates(coordinates: PolarCoordinates)->Point {
        return Point(withPolarCoordinates: coordinates)
    }
    
    mutating func movePointToPosition(newX: Double, newY: Double) {
        self = Point(x: newX, y: newY)
    }
    
    mutating func movePointToPosition(newRadianAngle: Double, newRadius: Double) {
        self = Point(radius: newRadius, angleInRadians: newRadianAngle)
    }
    
    mutating func movePointToPosition(newDegreeAngle: Double, newRadiusLength: Double) {
        self = Point(radius: newRadiusLength, angleInDegrees: newDegreeAngle)
    }

}

