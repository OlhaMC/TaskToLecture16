//
//  Rectangle.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

class Rectangle: Quadranle {
    
    override func getPerimeter()->Double? {
        return (sides[0].length + sides[1].length) * 2
    }

    override func getArea() -> Double? {
        return sides[0].length * sides[1].length
    }
}