//
//  ViewController.swift
//  iPhind
//
//  Created by Holly Frederick on 12/2/16.
//  Copyright © 2016 KoreysApp. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController {
    
    @IBOutlet weak var compassButton: UIButton!
    @IBOutlet weak var alarmButton: UIButton!
    @IBOutlet weak var optionsButton: UIButton!
    
    @IBOutlet weak var compassView: UIView!
    @IBOutlet weak var pingButton: UIButton!
    @IBOutlet weak var pointerIcon: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let options = [CBCentralManagerOptionShowPowerAlertKey:0]
//        bluetoothPeripheralManager = CBPeripheralManager(delegate: self, queue: nil, options: options)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pingButton(sender: UIButton) {
        UIView.animate(withDuration: 2.0, animations: {
            self.pointerIcon.transform = CGAffineTransform(rotationAngle: (180.0 * CGFloat(M_PI)) / 180.0)
        })
    }

}

