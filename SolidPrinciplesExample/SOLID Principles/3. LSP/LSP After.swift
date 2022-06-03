//
//  LSP After.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 27/5/22.
//

/*
 -> Object should be replaced with instance of their subclasses without altering the behaviour.
 -> আচরণ পরিবর্তন না করে অবজেক্টকে তাদের সাবক্লাসের উদাহরণ দিয়ে প্রতিস্থাপন করা উচিত।
 -> If S is a subclass of T, then objects of type T may be replaced with objects of type S without altering any of the desirable properies of the program.
 -> যদি S টি T-এর একটি সাবক্লাস হয়, তাহলে প্রোগ্রামের পছন্দসই বৈশিষ্ট্যগুলির কোনো পরিবর্তন না করে T টাইপের অবজেক্টগুলিকে S টাইপের বস্তু দিয়ে প্রতিস্থাপিত করা যেতে পারে।
 */

import Foundation

fileprivate protocol Polygon {
    func calculateArea() -> Float
}

fileprivate class Rectangle: Polygon {
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

fileprivate class Square: Polygon {
    var side: Float = 0
    func set(side: Float) {
        self.side = side
    }
    
    func calculateArea() -> Float {
        return pow(side, 2)
    }
}

fileprivate func printArea(of polygon: Polygon) {
    print(polygon.calculateArea())
}

fileprivate func example() {
    let rectangle = Rectangle()
    rectangle.set(height: 5)
    rectangle.set(height: 4)
    printArea(of: rectangle)
    
    let square = Square()
    square.set(side: 4)
    printArea(of: square)
}
