//
//  SecondViewController.swift
//  PushPresent
//
//  Created by Aishwarya on 05/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func push(_ sender: Any) {
        let thirdvc = storyboard?.instantiateViewController(withIdentifier: "tc") as! ThirdViewController
        self.navigationController?.pushViewController(thirdvc, animated: true)
    }


}
