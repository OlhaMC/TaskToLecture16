//
//  Triangle.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

class Triangle: Figure {
    
    var sides: [Line] {
       return [Line(origin: figureTops[0], end: figureTops[1]),
        Line(origin: figureTops[1], end: figureTops[2]),
        Line(origin: figureTops[2], end: figureTops[0])]
    }
    
    var angles: [Double] {
       return [sides[0].vector.angleBetweenVector(sides[1].vector),
            sides[1].vector.angleBetweenVector(sides[2].vector),
            sides[2].vector.angleBetweenVector(sides[0].vector)]
    }
    
    var typeByAngle: AngleType {
        switch (angles[0], angles[1], angles[2]) {
        case let (a, b, c) where a > 90 || b > 90 || c > 90 : return .ObtuseAngled
        case let (a, b, c) where a == 90 || b == 90 || c == 90 : return .RightAngled
        default: return .AcuteAngled
        }
    }
    
    var typeBySide: SideType {
        switch (sides[0].length, sides[1].length, sides[2].length) {
        case let (a, b, c) where a == b && b == c : return .Equilateral
        case let (a, b, c) where a == b || b == c || c == a : return .Isosceles
        default: return .NotEquilateral
        }
    }
    
    enum AngleType: String {
        case AcuteAngled, ObtuseAngled, RightAngled
    }
    
    enum SideType: String {
        case Equilateral, Isosceles, NotEquilateral
    }
    
    init(topA: Point, topB: Point, topC: Point) {
        super.init(points: topA, topB, topC)
    }
    
    convenience init(pointsTop: [Point]) {
        self.init(topA: pointsTop[0], topB: pointsTop[1], topC: pointsTop[2])
    }
    
    override func getPerimeter()->Double? {
        var perim = 0.0
        for index in 0 ... 1 {
            perim += figureTops[index].distanceToPoint(figureTops[index+1])
        }
        perim += figureTops[2].distanceToPoint(figureTops[0])
        return perim
    }
    
    override func getArea()->Double? {
        let perimeter = self.getPerimeter()! / 2
        return sqrt(perimeter * (perimeter - sides[0].length) * (perimeter - sides[1].length) * (perimeter - sides[2].length))
    }

}