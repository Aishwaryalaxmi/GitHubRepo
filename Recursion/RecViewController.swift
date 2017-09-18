//
//  ViewController.swift
//  Recursion
//
//  Created by Aishwarya on 16/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class RecViewController: UIViewController {
    var array = [5,4,3,2,1,8,7,6,5]
    var k = 0
    var mergedArray = [Int]()
    override func viewDidLoad() {
        super.viewDidLoad()
        mergedArray = [Int](repeating: 0, count: array.count)
        mergeSortRecursion(array: array)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func mergeSortRecursion(array:[Int]) -> [Int]? {
        var leftArray = [Int]()
        var rightArray = [Int]()
        let n = array.count
        let mid = n/2
        if n < 2{
            return array
        }
       
        for l in 0...mid-1 {
            leftArray.append(array[l])
        }
        for m in mid...n-1 {
            rightArray.append(array[m])
        }
        mergeSortRecursion(array: leftArray)
        mergeSortRecursion(array: rightArray)
        return merge(leftArray: leftArray, rightArray: rightArray)
    }


func merge(leftArray:[Int],rightArray:[Int]) -> [Int] {
    print("control to merge Function")
    var i = 0
    var j = 0
    while (i < leftArray.count && j < rightArray.count) {
        if leftArray[i] < rightArray[j] {
            array[k] = leftArray[i]
            i = i + 1
            
        } else {
            array[k] = rightArray[j]
            j = j + 1
        }
        k = k + 1
    }
    while (i < leftArray.count) {
        array[k] = leftArray[i]
        i = i + 1
        k = k + 1
    }
    while (j < rightArray.count) {
        array[k] = rightArray[j]
        j = j + 1
        k = k + 1
    }
    return array
}
}
