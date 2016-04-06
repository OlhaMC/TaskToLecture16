//
//  Quadrangle.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

class Quadranle: Figure {
    
    var sides: [Line] {
        return [Line(origin: figureTops[0], end: figureTops[1]),
            Line(origin: figureTops[1], end: figureTops[2]),
            Line(origin: figureTops[2], end: figureTops[3]),
            Line(origin: figureTops[3], end: figureTops[0]),]
    }
    
    var angles: [Double] {
        return [sides[0].vector.angleBetweenVector(sides[1].vector),
            sides[1].vector.angleBetweenVector(sides[2].vector),
            sides[2].vector.angleBetweenVector(sides[3].vector),
            sides[3].vector.angleBetweenVector(sides[0].vector)]
    }
    
    var typeOfQuadr: QuadrangleType {
        switch (sides[0].length, sides[1].length, angles[0]) {
        case let (a, b, k) where a == b && k == 90 : return .Square
        case let (a, b, k) where a == b && k != 90 : return .Diamond
        default: return .Rectangle
        }
    }
    
    enum QuadrangleType: String {
        case Rectangle, Square, Diamond
    }
    
    
    init(topA: Point, topB: Point, topC: Point, topD: Point) {
        super.init(points: topA, topB, topC, topD)
    }
    
    convenience init(pointsTop: [Point]) {
        self.init(topA: pointsTop[0], topB: pointsTop[1], topC: pointsTop[2], topD: pointsTop[3])
    }
    
    override func getPerimeter() -> Double? {
        return sides[0].length + sides[1].length + sides[2].length + sides[3].length
    }
    
}