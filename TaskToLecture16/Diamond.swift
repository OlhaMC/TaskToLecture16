//
//  Diamond.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

class Diamond: Quadranle {
    
    override func getPerimeter()->Double? {
        return sides[0].length * 4
    }
    
    override func getArea()->Double? {
        return figureTops[0].distanceToPoint(figureTops[2]) * figureTops[1].distanceToPoint(figureTops[3]) / 2
    }
}