//
//  ViewController.swift
//  PushPresent
//
//  Created by Aishwarya on 05/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func push(_ sender: Any) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "fc") as! FirstViewController
        self.navigationController?.pushViewController(firstVC, animated: true)
        
    }
}

