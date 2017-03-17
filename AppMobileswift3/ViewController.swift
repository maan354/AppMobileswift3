//
//  ViewController.swift
//  AppMobileswift3
//
//  Created by NDIAYE on 16/03/2017.
//  Copyright © 2017 NDIAYE. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var statesPickerBtn: UIButton!
    @IBOutlet weak var statesPicker: UIPickerView!
    var  Country = ["Senegal","France","UK","Mali","USA","Nigeria","Italie","Bresil","Russie","chine" ]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.statesPicker.dataSource = self
        self.statesPicker.delegate = self
        statesPicker.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func statesBtnPress(_ sender: Any) {
        statesPicker.isHidden = false
        
    }
//    required
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
//    required
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Country.count
    }
//    optional
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Country[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statesPickerBtn.setTitle(Country[row], for: .normal)
        statesPicker.isHidden = true
    }

}

