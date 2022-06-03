//
//  LSP Before.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 27/5/22.
//

/*
 -> Objects should be replaced with instances of their subclasses without altering the behaviour
 -> If S is a subtype of T then objects of type T may be replaced with objects of type S without altering any of the desirable properties of the program.
 */
import Foundation

fileprivate class Rectangle {
    var width: Float = 0
    var height:Float = 0
    
    func set(width: Float) {
        self.width = width
    }
    
    func set(height: Float) {
        self.height = height
    }
    
    func calculateArea() -> Float {
        return width * height
    }
}

fileprivate class Square: Rectangle {
    override func set(width: Float) {
        self.width = width
        self.height = width
    }
    
    override func set(height: Float) {
        self.width = height
        self.height = height
    }
}

// break LSP
fileprivate func setSizeAndArea(of rectangle: Rectangle) {
    rectangle.set(height: 5)
    rectangle.set(width: 4)
    print(rectangle.calculateArea())
}

fileprivate func example() {
    let rectangle = Rectangle()
    setSizeAndArea(of: rectangle)
    let square = Square()
    setSizeAndArea(of: square)
}

