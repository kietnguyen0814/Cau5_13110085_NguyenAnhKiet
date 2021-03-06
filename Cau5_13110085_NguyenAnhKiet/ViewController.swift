//
//  ViewController.swift
//  Cau5_13110085_NguyenAnhKiet
//
//  Created by Kiet Nguyen on 7/5/17.
//  Copyright © 2017 Kiet Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let person = Person(fullName: "Nguyen Anh Kiet")
        
        print (person.fullName)
        
        let name1 = Name(name: "Anh Kiet", prefix: nil)
        print(name1.fullName)
        
        let name2 = Name(name: "Anh Kiet", prefix: "Nguyen")
        print(name2.fullName)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

class Name: FullyNamed {
    var prefix: String?
    var name: String
    
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String {
        if prefix != nil {
            return prefix! + " " + name
        } else {
            return name
        }
    }
}

