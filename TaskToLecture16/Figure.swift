//
//  Figure.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

class Figure {
    var name: String?
    let figureTops: [Point]
    
    enum TypeOfFigure: String {
        case Unknown, Line, Triangle, Quadrangle
    }
    
    var figureType: TypeOfFigure {
        switch figureTops.count {
        case 2: return .Line
        case 3: return .Triangle
        case 4: return .Quadrangle
        default: return .Unknown
        }
    }
    
    init(points: Point ...) {
        figureTops = points
    }
    
    init(points:[Point]) {
        figureTops = points
    }
    
    subscript(index: Int)->Point? {
        if index >= 0 && index < figureTops.count {
            return self.figureTops[index]
        } else {
            return nil
        }
    }

    func getPerimeter()->Double? {
        return nil
    }
    
    func getArea()->Double? {
        return nil
    }

}