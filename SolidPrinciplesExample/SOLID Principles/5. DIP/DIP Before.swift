//
//  DIP Before.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 30/5/22.
//

import Foundation

fileprivate struct Employee {
    func work() {
        print("Working ....")
    }
}

fileprivate struct Employer {
    var employers: [Employee]
    
    func manage() {
        employers.forEach() { employee in
            employee.work()
        }
    }
}

fileprivate func example() {
    let employer = Employer(employers: [Employee]())
    employer.manage()
}
