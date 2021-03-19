//
//  ViewController.swift
//  CSCI-322-Assignment-4
//
//  Created by Eric Kirchman Z1864162 and Dan Hufford Z1864126 on 3/15/21.
//
// ViewController = DetailViewController

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var timeTableLabel: UILabel!
    @IBOutlet weak var nicknameLabel: UILabel!
    @IBOutlet weak var partyLabel: UILabel!
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureView()
    }

    var detailItem: USPresident? {
        didSet {
            configureView()
        }
    }
    
    func configureView() {
        // Update user interface with the fields of the detail item
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .ordinal
        
        
        if let detail = detailItem {
            if let label = nameLabel {
                label.text = detail.name
            }
            if let label = numberLabel {
                //label.text = String(detail.number)
                let formatted = numberFormatter.string(from: NSNumber(value: detail.number))
                label.text = formatted! + " President of the United States"
                //label.sizeToFit()

            }
            if let label = timeTableLabel {
                label.text = "(" + String(detail.startDate) + " to " + String(detail.endDate) + ")"
            }
            if let label = nicknameLabel {
                label.text = detail.nickname
            }

            if let label = partyLabel {
                label.text = detail.politicalParty
            }
        }
    }

}

