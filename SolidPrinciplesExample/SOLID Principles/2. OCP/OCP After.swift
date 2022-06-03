//
//  OCP After.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 27/5/22.
//

/*
 -> Entities should be open for extension but closed for modification.
 -> সত্তা সম্প্রসারণের জন্য উন্মুক্ত হওয়া উচিত কিন্তু পরিবর্তনের জন্য বন্ধ।
 -> A class is closed, since it may be compiled, stored in a library, baselined and used by client classes but it is also open, since any new class may use it as parent, adding new feature. When a descendant class is defined there is no need to change the original or to disturb its clients.
 -> একটি ক্লাস বন্ধ রয়েছে, যেহেতু এটি সংকলিত, একটি লাইব্রেরিতে সংরক্ষিত, বেসলাইন করা এবং ক্লায়েন্ট ক্লাস দ্বারা ব্যবহার করা যেতে পারে তবে এটি খোলাও রয়েছে, যেহেতু যে কোনও নতুন ক্লাস এটিকে অভিভাবক হিসাবে ব্যবহার করতে পারে, নতুন বৈশিষ্ট্য যোগ করতে পারে। যখন একটি বংশধর শ্রেণী সংজ্ঞায়িত করা হয় তখন মূল পরিবর্তন করার বা এর ক্লায়েন্টদের বিরক্ত করার কোন প্রয়োজন নেই।
 */
import Foundation

protocol PaymentProtocol {
    func makePayment(amount: Double)
}

fileprivate class CashPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        
    }
}

fileprivate class VisaPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        
    }
}

fileprivate class MasterCardPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        
    }
}

fileprivate class PaymentManager {
    func makePayment(amount: Double, payment: PaymentProtocol) {
        payment.makePayment(amount: amount)
    }
}
