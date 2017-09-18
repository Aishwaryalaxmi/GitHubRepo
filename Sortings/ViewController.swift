//
//  ViewController.swift
//  Sortings
//
//  Created by Aishwarya on 07/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var array = [5,4,3,2,1,9,8,7,6,10,9]
    override func viewDidLoad() {
        super.viewDidLoad()
        //bubbleSort()
        insertionSort()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func selectionSort() {
        for x in 0...array.count-1 {
            var lowest = array[x]
            var lowestIndex = x
            for y in x...array.count-1{
                if lowest > array[y] {
                    lowest = array[y]
                    lowestIndex = y
                }
            }
            let temp = array[x]
            array[x] = lowest
            array[lowestIndex] = temp
        }
        for i in 0...array.count-1 {
            print(array[i])
        }
    }
    
    func bubbleSort() {
        for _ in 0...array.count-2 {
            for j in 0...array.count-2 {
                if array[j] > array[j+1] {
                    let temp = array[j]
                    array[j] = array[j+1]
                    array[j+1] = temp
                }
            }
        }
        for i in 0...array.count-1 {
            print(array[i])
        }
    }
    
    func insertionSort() {
        for i in 0...array.count-1 {
            for j in 0..<i {
                if array[j] > array[i] {
                    let temp = array[j]
                    array[j] = array[i]
                    array[i] = temp
                }
            }
        }
        for i in 0..<array.count {
            print(array[i])
        }
    }
}

