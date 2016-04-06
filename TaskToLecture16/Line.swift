//
//  Line.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

class Line: Figure {
    
    var originPoint: Point {
        return figureTops[0]
    }
    var endPoint: Point {
        return figureTops[1]
    }
    var length: Double {
        return figureTops[0].distanceToPoint(figureTops[1])
    }
    var vector: Vector {
        return Vector(origin: figureTops[0], end: figureTops[1])
    }
    
    
    init(origin: Point, end: Point) {
        super.init(points: origin, end)
    }
}