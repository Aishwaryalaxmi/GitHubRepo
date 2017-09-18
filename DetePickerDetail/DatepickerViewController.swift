//
//  ViewController.swift
//  DetePickerDetail
//
//  Created by Aishwarya on 14/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class DatepickerViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.datePickerMode = .dateAndTime
        textField.inputView = datePicker
         datePicker.locale = NSLocale(localeIdentifier: "en_GB") as Locale
        datePicker.addTarget(self, action: #selector(handleDatePicker), for: .valueChanged)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func handleDatePicker(sender:UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy HH:mm"
        textField.text = dateFormatter.string(from: sender.date)
    }
}



