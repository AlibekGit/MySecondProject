//
//  ViewController.swift
//  MySecondProject
//
//  Created by Алибек Балтабай on 27.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoDaysLabel: UILabel!

    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func resultButtonTapped() {
        self.infoDaysLabel.text = "Your enjoying days \(numberOfDays)"
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        print(range)
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
}

