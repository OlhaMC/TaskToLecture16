//
//  Mathematics.swift
//  TaskToLecture16
//
//  Created by AppleTree on 2/23/16.
//  Copyright © 2016 OlhaF. All rights reserved.
//

import Foundation

class Mathematics {
    let figures: [Figure]
    
    init(someFigures: Figure ...) {
        figures = someFigures
    }
    
    init(figureArray: [Figure]) {
        figures = figureArray
    }
    
    func findFigureWithMaxPerimeter()->(Figure, Double)? {
        
        
        if let index = validateFigureForPerimeter() {
            var pickedFigure = figures[index]
            var maxPerimeter = figures[index].getPerimeter()!
            for item in figures {
                if let perim = item.getPerimeter() {
                    if maxPerimeter < perim {
                        maxPerimeter = perim
                        pickedFigure = item
                    }
                }
            }
            return (pickedFigure, maxPerimeter)
        } else {
            return nil
        }
        
    }
    
    func findFigureWithMinPerimeter()->(Figure, Double)? {
        
        if let index = validateFigureForPerimeter() {
            var pickedFigure = figures[index]
            var minPerimeter = figures[index].getPerimeter()!
            for item in figures {
                if let perim = item.getPerimeter() {
                    if minPerimeter > perim {
                        minPerimeter = perim
                        pickedFigure = item
                    }
                }
                
            }
            return (pickedFigure, minPerimeter)
        } else {
            return nil
        }
    }
    
    func findFigureWithMaxArea()->(Figure, Double)? {
        
        if let index = validateFigureForArea() {
            var pickedFigure = figures[index]
            var maxArea = figures[index].getArea()!
            for item in figures {
                if let area = item.getArea() {
                    if maxArea < area {
                        maxArea = area
                        pickedFigure = item
                    }
                }
                
            }
            return (pickedFigure, maxArea)
        } else {
            return nil
        }
        
    }
    
    func findFigureWithMinArea()->(Figure, Double)? {
        
        if let index = validateFigureForArea() {
            var pickedFigure = figures[index]
            var minArea = figures[index].getArea()!
            for item in figures {
                if let area = item.getArea() {
                    if minArea > area {
                        minArea = area
                        pickedFigure = item
                    }
                }
                
            }
            return (pickedFigure, minArea)
        } else {
            return nil
        }
    }
    
    private func validateFigureForPerimeter()->Int? {
        
        for index in 0..<figures.count {
            if let _ = figures[index].getPerimeter() {
                return index
            }
        }
        return nil
    }
    
    private func validateFigureForArea()->Int? {
        
        for index in 0..<figures.count {
            if let _ = figures[index].getArea() {
                return index
            }
        }
        return nil
    }
    
}



