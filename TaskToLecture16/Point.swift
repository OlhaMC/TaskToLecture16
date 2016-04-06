//
//  Point.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

struct Point {
    let x, y: Double
    let radius, angle: Double
    
    static let degreesToRadians = M_PI / 180
    static let radiansToDegrees = 180 / M_PI
    
    init() {
        x = 0
        y = 0
        radius = 0
        angle = 0
    }
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
        
        radius = sqrt(pow(x,2)+pow(y,2))
        angle = atan2(y,x)
    }
    
    init(radius: Double, angleInRadians: Double) {
        self.radius = radius
        if angleInRadians > 2*M_PI || angleInRadians < -2*M_PI {
            angle = angleInRadians % 2*M_PI
        } else {
            angle = angleInRadians
        }
        x = radius * cos(angle)
        y = radius * sin(angle)
    }
    
    init(radius: Double, angleInDegrees: Double) {
        
        self.radius = radius
        if angleInDegrees > 360 || angleInDegrees < -360 {
            self.angle = (angleInDegrees % 360) * Point.degreesToRadians
        } else {
            self.angle = angleInDegrees * Point.degreesToRadians
        }
        x = radius * cos(angle)
        y = radius * sin(angle)
    }
    
    func convertRadiansToDegrees() -> Double {
        return angle * Point.radiansToDegrees
    }
    
    func distanceToPoint(secondPoint: Point) -> Double {
        return sqrt(pow((x-secondPoint.x),2)+pow((y-secondPoint.y),2))
    }
    
    func infoAboutPoint(isInCartesianCoordSystem verify: Bool = true)->String {
        if verify {
            return "Cartesia coordinates of the point: (x: \(x), y: \(y))"
        } else {
            return "Polar coordinates of the point: (angle: \(angle) rad, radius: \(radius))"
        }
    }
}
