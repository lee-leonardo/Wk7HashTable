//
//  ViewController.swift
//  HashTable
//
//  Created by Leonardo Lee on 9/2/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var table = HashTable(size: 20)
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateTable()
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func generateTable() {
        
        var leo = "Leo"
        var brad = "Brad"
        var john = "John"
        var jeff = "Jeff"
        var vick = "Victor"
        var mike = "Michael"
        var alex = "Alex"
        var collin = "Collin"
        var dan = "Dan"
        var kirby = "Kirby"
        
        table.setObject(leo, key: leo)
        table.setObject(brad, key: brad)
        table.setObject(john, key: john)
        table.setObject(jeff, key: jeff)
        table.setObject(vick, key: vick)
        table.setObject(mike, key: mike)
        table.setObject(alex, key: alex)
        table.setObject(collin, key: collin)
        table.setObject(dan, key: dan)
        table.setObject(kirby, key: kirby)

    }
    
}

