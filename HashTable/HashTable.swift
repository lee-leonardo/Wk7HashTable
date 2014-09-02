//
//  HashTable.swift
//  HashTable
//
//  Created by Leonardo Lee on 9/2/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import Foundation

class HashTable {
    var size : Int
    var hashArray = [Bucket]()
    var count = 0
    
    init (size : Int) {
        self.size = size
        
        for i in 0..<size {
            self.hashArray.append(Bucket())
        }
    }
    
    func generateHash(key: String) -> Int {
        var sum = 0
        
        for char in key.unicodeScalars {
            var asc = Int(char.value)
            sum += asc
        }
        
        println(sum % self.size)
        return sum % self.size
    }
    
    func setObject(object: AnyObject, key: String) {
        
        var index = self.generateHash(key)
        
        var bucket = Bucket()
        bucket.key = key
        bucket.value = object
        
        self.removeObjectForKey(key)
        
        bucket.nextHash = self.hashArray[index]
        self.hashArray[index] = bucket
        self.count++
    }
    
    func removeObjectForKey(key: String) {
        var index = self.generateHash(key)
        var previousBucket : Bucket?
        var bucket : Bucket? = self.hashArray[index]
        
        while bucket != nil {
            if bucket?.key == key {
                if previousBucket == nil {
                    var nextBucket = bucket?.nextHash
                    self.hashArray[index] ?? bucket?.nextHash
                } else {
                    previousBucket?.nextHash = bucket?.nextHash
                }
                self.count--
                return
            }
            
            previousBucket = bucket
            
            if let nextBucket = bucket?.nextHash {
                bucket = nextBucket
            } else {
                bucket = nil
            }
        }
    }
    
    func objectForKey(key: String) -> AnyObject? {
        var index = self.generateHash(key)
        var bucket : Bucket? = self.hashArray[index]
        
        while bucket != nil {
            if bucket!.key == key {
                return bucket!.value
            } else {
                bucket = bucket!.nextHash!
            }
        }
        return nil
    }
}
