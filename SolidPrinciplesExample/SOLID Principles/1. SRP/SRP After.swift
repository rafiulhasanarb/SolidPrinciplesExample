//
//  SRP After.swift
//  SolidPrinciplesExample
//
//  Created by rafiul hasan on 27/5/22.
//

/*
 -> There should never be more than one reason for a class to change.
 -> একটি ক্লাস পরিবর্তন করার জন্য একাধিক কারণ থাকা উচিত নয়।
 -> A module or class should have only one responseibility and that responsibility should be entirely encapsulated by that module / class.
 -> একটি মডিউল বা ক্লাসের শুধুমাত্র একটি প্রতিক্রিয়াশীলতা থাকা উচিত এবং সেই দায়িত্বটি সম্পূর্ণরূপে সেই মডিউল/শ্রেণির দ্বারা আবদ্ধ হওয়া উচিত।
 */
import Foundation

fileprivate class Handler {
    let apiHandler: APIHandlers
    let parseHandler: ParseHandler
    let storageHandler: StorageHandler
    
    init (apiHandler: APIHandlers, parseHandler: ParseHandler, storageHandler: StorageHandler) {
        self.apiHandler = apiHandler
        self.parseHandler = parseHandler
        self.storageHandler = storageHandler
    }
}

fileprivate class APIHandlers {
    func loadData() -> Data {
        return Data()
    }
}

fileprivate class ParseHandler {
    func parse(data: Data) -> Any {
        return ""
    }
}

fileprivate class StorageHandler {
    func save(data: Any) {
        
    }
}
