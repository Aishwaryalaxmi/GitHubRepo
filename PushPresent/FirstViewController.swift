//
//  FirstViewController.swift
//  PushPresent
//
//  Created by Aishwarya on 05/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let barButton = UIBarButtonItem(title: "Add", style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = barButton
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func present(_ sender: Any) {
     
        let secondvc = storyboard?.instantiateViewController(withIdentifier: "sc") as! SecondViewController
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        let nav = appDelegate.window?.rootViewController
//        (nav as! UINavigationController).setViewControllers([secondvc], animated: false)
        let nav = UINavigationController(rootViewController: secondvc)
        present(nav, animated: true, completion: nil)
    }
    
}
