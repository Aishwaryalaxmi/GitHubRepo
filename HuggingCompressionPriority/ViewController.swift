//
//  ViewController.swift
//  HuggingCompressionPriority
//
//  Created by Aishwarya on 07/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

protocol PrintClassName{
    var path:String {get}
}

extension PrintClassName{
    func printClassName() {
        print(path)
    }
}

enum LearnEnum:PrintClassName {
    case book
    case pen
    
    var path: String {
        switch self {
        case .book:
            return "BookPath"
        case .pen:
            return "PenPath"
        }
    }
    
}

class ViewController: UIViewController {
        var path: String = "MyPath"


    override func viewDidLoad() {
        super.viewDidLoad()
        LearnEnum.book.printClassName()
        checkDict(id: "2", name: "Aish")
//        printClassName()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func checkDict(id:String,name:String) {
        let dict = ["id":id,"name":name]
        let paramsDict = ["detail": dict]
        print(paramsDict)
    }
}


