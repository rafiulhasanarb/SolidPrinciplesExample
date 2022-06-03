//
//  DIP After.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 30/5/22.
//

/*
 -> Depend on abstractions not on Concretions.
 -> কনক্রিশনের উপর নয় বিমূর্ততার উপর নির্ভর করুন।
 -> Abrstractions should not depend on details, details should not depend on abstractions.
 -> বিমূর্ততা বিশদ বিবরণের উপর নির্ভর করা উচিত নয়, বিবরণ বিমূর্তকরণের উপর নির্ভর করা উচিত নয়।
 -> High level modules should not depend upon low level modules, both should depend upon abstractions.
 -> উচ্চ স্তরের মডিউলগুলি নিম্ন স্তরের মডিউলগুলির উপর নির্ভর করবে না, উভয়ই বিমূর্ততার উপর নির্ভর করবে।
 */

import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate struct Employee: Workable {
    func work() {
        print("Working ....")
    }
}

fileprivate struct Employer {
    var workable: [Workable]
    
    func manage() {
        workable.forEach{ workable in
            workable.work()
        }
    }
}

fileprivate func example() {
    let employer = Employer(workable: [Employee]())
    employer.manage()
}
