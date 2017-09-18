//
//  ViewController.swift
//  LayerAnimation
//
//  Created by Aishwarya on 06/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class LayerViewController: UIViewController {

    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    let circleShapeLayer1 = CAShapeLayer()
    
    let arcCenter1 = CGPoint(x: containerView.bounds.width/2, y: containerView.bounds.height/2)
    let radius1 = (containerView.bounds.size.width)/2.0
    let startAngle1 = CGFloat(0.0)
    let endAngle1 =  CGFloat(Double.pi*2)
    let clockwise1 =  true
    
    //  circleShapeLayer?.path = UIBezierPath(rect: (circleShapeLayer?.bounds)).cgPath
    circleShapeLayer1.path = UIBezierPath(arcCenter: arcCenter1, radius: radius1, startAngle: startAngle1, endAngle: endAngle1,clockwise: clockwise1).cgPath
    
    circleShapeLayer1.lineWidth = 2.0
    circleShapeLayer1.fillColor = UIColor.red.cgColor
    circleShapeLayer1.strokeStart = 0.12
    circleShapeLayer1.strokeEnd = 0.88
    
    self.containerView.layer.addSublayer(circleShapeLayer1)
    
    var circleShapeLayer2 : CAShapeLayer?
    circleShapeLayer2 = CAShapeLayer()
    //        let screenBounds2 = UIScreen.main.bounds
    //        circleShapeLayer2?.frame = CGRect(x: screenBounds2.size.width * 0.5 - 60 , y: screenBounds2.size.height * 0.5 - 60, width: 120.0, height: 120.0)
    circleShapeLayer2?.lineWidth = 2.0
    circleShapeLayer2?.fillColor = UIColor.blue.cgColor
    circleShapeLayer2?.borderColor = UIColor.clear.cgColor
    circleShapeLayer2?.anchorPoint = CGPoint(x: 0.5, y: 0.5)
    
    let arcCenter2 = self.view.center
    let radius2 = (self.view.bounds.size.width)/2.0
    let startAngle2 = CGFloat(Double.pi)
    let endAngle2 =  CGFloat(Double.pi*2)
    let clockwise2 =  true
    
    circleShapeLayer2?.path = UIBezierPath(arcCenter: arcCenter2, radius: radius2, startAngle: startAngle2, endAngle: endAngle2, clockwise: clockwise2).cgPath
    self.view.layer.addSublayer(circleShapeLayer2!)
    // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
}

