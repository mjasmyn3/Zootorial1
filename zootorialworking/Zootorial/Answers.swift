//
//  Answers.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 8/1/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit
import os.log

class Answers: NSObject, NSCoding {


//Properties 
    var bookName : String
    var numCorrect: String
    var date: String
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("answers")
    
    struct PropertyKey {
        static let bookName = "bookName"
        static let numCorrect = "numCorrect"
        static let date = "date"
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(bookName, forKey: PropertyKey.bookName)
        aCoder.encode(numCorrect, forKey: PropertyKey.numCorrect)
        aCoder.encode(date, forKey: PropertyKey.date)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        
        // The name is required. If we cannot decode a name string, the initializer should fail.
        guard let bookName = aDecoder.decodeObject(forKey: PropertyKey.bookName) as? String else {
            os_log("Unable to decode the name for a Meal object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        guard let numCorrect = aDecoder.decodeObject(forKey: PropertyKey.numCorrect) as? String else {
            os_log("Unable to decode the name for a Meal object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        guard let date = aDecoder.decodeObject(forKey: PropertyKey.date) as? String else {
            os_log("Unable to decode the name for a Meal object.", log: OSLog.default, type: .debug)
            return nil
        }
        
        
        
        
        // Must call designated initializer.
        self.init(bookName: bookName, numCorrect: numCorrect, date: date)
        
    }



    


    init?(bookName: String, numCorrect: String, date: String){
        self.bookName = bookName
        self.numCorrect = numCorrect
        self.date = date

    }
    
}

