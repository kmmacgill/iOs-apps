//
//  ViewController.swift
//  iPhind
//
//  Created by Holly Frederick on 12/2/16.
//  Copyright © 2016 KoreysApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    @IBOutlet weak var alarmButton: UIButton!
    @IBOutlet weak var compassButton: UIButton!
    @IBOutlet weak var optionsButton: UIButton!
    
    @IBOutlet weak var optionsView: UIView!
    @IBOutlet weak var batteryStatus: UIProgressView!
    @IBOutlet weak var soundList: UIPickerView!
    let soundListData = ["Beep", "Whistle", "Shout" , "Bark"]
    @IBOutlet weak var statusofConnection: UILabel!
    @IBOutlet weak var volumeControl: UISlider!
    @IBOutlet weak var connectDeviceButton: UIButton!
    
    @IBOutlet weak var compassView: UIView!
    @IBOutlet weak var locateButton: UIButton!
    @IBOutlet weak var locatorImage: UIImageView!
    
    @IBOutlet weak var chooseDeviceView: UIView!
    @IBOutlet weak var chooseDeviceButton: UIButton!
    @IBOutlet weak var deviceTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let options = [CBCentralManagerOptionShowPowerAlertKey:0]
//        bluetoothPeripheralManager = CBPeripheralManager(delegate: self, queue: nil, options: options)
        self.compassView.isHidden = true;
        self.optionsView.isHidden = true;
        self.soundList.dataSource = self;
        self.soundList.delegate = self;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func locateButtonPressed(_ sender: Any) {
        locatorImage.transform = CGAffineTransform(rotationAngle: randomCGFloat(min: 1, max: 10));
    }
    
    // Open Up the Compass View, and hide the Options View
    @IBAction func compassButtonClicked(_ sender: Any) {
        self.compassView.isHidden = false;
        self.optionsView.isHidden = true;
    }
    //Ping the Bluetooth Connected Device
    @IBAction func alarmButtonClicked(_ sender: Any) {
        //TODO: ping the bluetooth chip and get it to ring
    }
    //Hide the Compass View and show the Options View
    @IBAction func optionsButtonClicked(_ sender: Any) {
        self.compassView.isHidden = true;
        self.optionsView.isHidden = false;
    }
    
    @IBAction func connectDeviceButtonClicked(_ sender: Any) {
        self.chooseDeviceView.isHidden = false;
    }
    
    @IBAction func chooseDeviceButtonClicked(_ sender: Any) {
        self.chooseDeviceView.isHidden = true;
    }
    
    
    func randomCGFloat(min: CGFloat, max: CGFloat) -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX)) * (max - min) + min
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return soundListData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return soundListData[row]
    }
}

