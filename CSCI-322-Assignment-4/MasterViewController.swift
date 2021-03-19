//
//  MasterViewController.swift
//  CSCI-322-Assignment-4
//
//  Created by Eric Kirchman on 3/17/21.
//
// MasterViewController = MasterViewController

import UIKit

class MasterViewController: UITableViewController {

    //var presidents: [USPresident] = []
    var presidents = [
        USPresident(name: "Donald Trump", number: "45", startDate: "Jan 21, 2016", endDate: "Jan 21, 2021", nickname: "The Don", politicalParty: "Republican")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //loadPropertyList()
        /*
        presidents.sort {
            $0.name < $1.name
        }
        */
    }

    /*
    func loadPropertyList() {
        guard let path = Bundle.main.path(forResource: "presidents", ofType: "plist"), let xml = FileManager.default.contents(atPath: path) else {
            fatalError("Unable to access property list presidents.plist")
        }
        
        do {
            presidents = try PropertyListDecoder().decode([USPresident].self, from: xml)
        } catch {
            fatalError("Unable to decode property list presidents.plist")
        }
    }
    */
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presidents.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PresidentCell

        // Configure the cell...
        
        cell.nameLabel?.text = presidents[indexPath.row].name
        cell.politicalPartyLabel?.text = presidents[indexPath.row].politicalParty

        return cell
    }
    
    
    
}
