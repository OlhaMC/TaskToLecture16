//
//  AppDelegate.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    
        let A = Point(x: 0, y: 0)
        let B = Point(x: 0, y: 4)
        let C = Point(x: 3, y: 4)
        let D = Point(x: 3, y: 0)
        
        
        let triangleABC = Triangle(topA: A, topB: B, topC: C)
        triangleABC.angles[0]
        triangleABC.angles[2]
        triangleABC.angles[1]
        triangleABC.typeByAngle
        triangleABC.typeBySide
        
        let quadrABCD = Quadranle(topA: A, topB: B, topC: C, topD: D)
        quadrABCD.sides[0].length
        
        let E = Point(x: 4, y: -2)
        let F = Point(x: 3, y: -4)
        let H = Point(x: 2, y: -2)
        
        let diamondDEFH = Diamond(topA: D, topB: E, topC: F, topD: H)
        
        let I = Point(x: -4, y: -5)
        let K = Point(x: -8, y: -6)
        
        let triangleAIK = Triangle(topA: A, topB: I, topC: K)
        
        let L = Point(x: -3, y: 4)
        let M = Point(x: -8, y: 1)
        
        let lineLM = Line(origin: L, end: M)
        
        let mathInstance = Mathematics(someFigures: lineLM, triangleABC, triangleAIK, quadrABCD, diamondDEFH)
        
        
        let maxArea = mathInstance.findFigureWithMaxArea()
        if let maxA = maxArea {
           print("Figure with max area is of type \(maxA.0) equals \(maxA.1)")
        }
        let minArea = mathInstance.findFigureWithMinArea()
        if let minA = minArea {
            print("Figure with min area is of type \(minA.0) equals \(minA.1)")
        }
        let maxPerimeter = mathInstance.findFigureWithMaxPerimeter()
        if let maxP = maxPerimeter {
            print("Figure with max perimeter is of type \(maxP.0) equals \(maxP.1)")
        }
        let minPerimeter = mathInstance.findFigureWithMinPerimeter()
        if let minP = minPerimeter {
            print("Figure with min perimeter is of type \(minP.0) equals \(minP.1)")
        }
        
        return true
    }

    }

