//
//  ISP After.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 30/5/22.
//

/*
 -> A client should not be forced to implement an interface that it doesn't use.
 -> একটি ক্লায়েন্টকে এমন একটি ইন্টারফেস প্রয়োগ করতে বাধ্য করা উচিত নয় যা এটি ব্যবহার করে না।
 -> No code should be forced to depend on method it does not use.
 -> কোন কোড এটি ব্যবহার করে না পদ্ধতির উপর নির্ভর করতে বাধ্য করা উচিত নয়।
 -> client should not be forced to depend upon interfaces that they doesn't use, No code should be force to depend on methods it doesn't use.
 -> ক্লায়েন্টকে এমন ইন্টারফেসের উপর নির্ভর করতে বাধ্য করা উচিত নয় যা তারা ব্যবহার করে না, কোন কোড ব্যবহার করে না এমন পদ্ধতির উপর নির্ভর করতে বাধ্য করা উচিত নয়।
 */

import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate protocol Feedable {
    func eat()
}

fileprivate class Human: Workable, Feedable {
    func work() {
        print("Working ...")
    }
    
    func eat() {
        print("Working ...")
    }
}

fileprivate class Robot: Workable {
    func work() {
        print("Working ...")
    }
}

fileprivate func example() {
    let human = Human()
    human.work()
    human.eat()
    
    let robot = Robot()
    robot.work()
}
