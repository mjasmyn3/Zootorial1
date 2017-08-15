//
//  Stories.swift
//  Zootorial
//
//  Created by Jasmyn Medina on 7/24/17.
//  Copyright © 2017 J.A.K.E Corp. All rights reserved.
//

import UIKit


class Story {
    
//Mark: Properties
    
    var name: String
    var photo: UIImage?
    var description: String
    var b: [String]
    var qq1: String
    var qq2: String
    var qq3: String
    var qq4: String
    var multA: String
    var multB: String
    var multA2: String
    var multB2: String
    var multA22: String
    var multB22: String
    var multA3: String
    var multB3: String
    var fulltext: String
    var bookImage: UIImage?
    
    
    
    
    
    
    //Mark: Initialization
    
    init?(name: String, photo: UIImage?, Des: String, a: [String], qq1: String, qq2: String, qq3: String, qq4: String, multa: String, multb: String, multa2: String, multb2: String, multa22: String, multb22: String, multa3: String, multb3: String, fulltext: String, bookImage: UIImage?) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.description = Des
        self.b = a
        self.qq1 = qq1
        self.qq2 = qq2
        self.qq3 = qq3
        self.qq4 = qq4
        self.multA = multa
        self.multB = multb
        self.multA2 = multa2
        self.multB2 = multb2
        self.multA22 = multa22
        self.multB22 = multb22
        self.multA3 = multa3
        self.multB3 = multb3
        self.fulltext = fulltext
        self.bookImage = bookImage
        
    }

    
   }

