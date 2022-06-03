//
//  ISP Before.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 30/5/22.
//

import Foundation

fileprivate protocol Worker {
    func work()
    func eat()
}

fileprivate class Human: Worker {
    func work() {
        print("Working ....")
    }
    
    func eat() {
        print("Eating ....")
    }
}

fileprivate class Robot: Worker {
    func work() {
        print("Working ...")
    }
    
    func eat() {
        fatalError("Robot doesn't eating....!")
    }
}

fileprivate func example() {
    let human = Human()
    human.work()
    human.eat()
    
    let robot = Robot()
    robot.work()
    robot.eat()
}
