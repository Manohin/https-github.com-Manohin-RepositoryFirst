//
//  ViewController.swift
//  myDaysApp
//
//  Created by Alexey Manokhin on 18.08.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var resultButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //resultButton.layer.cornerRadius = 12
    }
    private var numberOfDays: String = ""
    @IBAction func datePicker(_ sender: UIDatePicker) {
        
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    @IBOutlet weak var pictureAlina: UIImageView!
    @IBAction func resultButtonTapped(_ sender: UIButton) {
     infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
     
}
}
