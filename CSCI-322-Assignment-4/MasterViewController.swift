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
    var presidents = ["Barack Obama", "Joe Biden", "Donald Trump"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        /*
        loadPropertyList()
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
            fatalError("Unable to decode property list characters.plist")
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
        //cell.characterImageView.image = UIImage(named: presidents[indexPath.row].name)
        cell.nameLabel?.text = presidents[indexPath.row].name
        cell.allegianceLabel?.text = presidents[indexPath.row].allegiance

        return cell
    }
    
}
