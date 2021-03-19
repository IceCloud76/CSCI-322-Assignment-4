//
//  ViewController.swift
//  CSCI-322-Assignment-4
//
//  Created by Eric Kirchman on 3/15/21.
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
        
        if let detail = detailItem {
            if let label = nameLabel {
                label.text = detail.name
            }
            if let label = numberLabel {
                label.text = String(detail.number)
            }
            if let label = timeTableLabel {
                label.text = detail.startDate
            }
            if let label = nicknameLabel {
                label.text = detail.nickname
            }

        }
    }

}

