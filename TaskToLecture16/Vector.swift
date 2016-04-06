//
//  Vector.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

struct Vector {
    let coordinates: (Double,Double)
    var module: Double {
        return sqrt(pow(coordinates.0, 2)+pow(coordinates.1, 2))
    }
    
    init(origin: Point, end: Point) {
        coordinates.0 = end.x - origin.x
        coordinates.1 = end.y - origin.y
    }
    
    init(first: Double, second: Double) {
        coordinates.0 = first
        coordinates.1 = second
    }
    
    func scalarProduct(vectorB: Vector)->Double {
        let prod = coordinates.0 * vectorB.coordinates.0 + coordinates.1 * vectorB.coordinates.1
        if prod >= 0 {
            return prod
        } else {
            return -prod
        }
        
    }
    
    func angleBetweenVector(vectorB: Vector)->Double {
        return acos(scalarProduct(vectorB) / (module * vectorB.module)) * Point.radiansToDegrees
    }

}
