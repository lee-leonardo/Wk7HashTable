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
        println("ViewDidLoad table count: \(table.count)")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.addendum()
        
//        for entry : Bucket in self.table.hashArray { println("Key: \(entry.key), Value: \(entry.value)") }
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
    func addendum() {
        var yoshi = "Yoshi"
        var mario = "Mario"
        var peach = "Peach"
        var zero = "Zero"
        var mega = "Megaman"
        var ashe = "Ashe"
        var morgan = "Morgan"
        var gar = "Garrett"
        var perse = "Persephone"
        var tim = "Timmy"
        var sarah = "Sarah"
        var hiero = "Hieronymous"
        var aug = "Augustus"
        var mars = "Mars"
        var det = "Detrick"
        var cam = "Camille"
        var xen = "Xenophon"
        var xer = "Xerxes"
        
        table.setObject(yoshi, key: yoshi)
        table.setObject(mario, key: mario)
        table.setObject(peach, key: peach)
        table.setObject(zero, key: zero)
        table.setObject(mega, key: mega)
        table.setObject(ashe, key: ashe)
        table.setObject(morgan, key: morgan)
        table.setObject(gar, key: gar)
        table.setObject(perse, key: perse)
        table.setObject(tim, key: tim)
        table.setObject(sarah, key: sarah)
        table.setObject(hiero, key: hiero)
        table.setObject(aug, key: aug)
        table.setObject(mars, key: mars)
        table.setObject(det, key: det)
        table.setObject(cam, key: cam)
        table.setObject(xen, key: xen)
        table.setObject(xer, key: xer)

    }
    
}

