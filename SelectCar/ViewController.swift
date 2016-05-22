//
//  ViewController.swift
//  SelectCar
//
//  Created by junhyungjin on 2016. 5. 22..
//  Copyright © 2016년 Hyung Jun Jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var carName = ["테슬라","람보르기니","포르쉐"]
    var carModel:[String] = ["모델s","모델x"]
    
    
    @IBOutlet var imgView: UIImageView!
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return carName.count
        }else {
            return carModel.count
        }
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return carName[row]
        }else {
            return carModel[row]
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

