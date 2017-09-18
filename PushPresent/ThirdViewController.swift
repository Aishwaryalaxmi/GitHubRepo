//
//  ThirdViewController.swift
//  PushPresent
//
//  Created by Aishwarya on 05/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func Push(_ sender: Any) {
        let firstVC = storyboard?.instantiateViewController(withIdentifier: "vc") as! ViewController
        self.navigationController?.setViewControllers([firstVC,self], animated: false)
        self.navigationController?.popToRootViewController(animated: true)
    }

}
