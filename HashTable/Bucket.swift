//
//  Bucket.swift
//  HashTable
//
//  Created by Leonardo Lee on 9/2/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation
class Bucket {
    
    var nextHash : Bucket?
    var key : String?
    var value : AnyObject?
    
    init() {}
}