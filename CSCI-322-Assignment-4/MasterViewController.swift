//
//  MasterViewController.swift
//  CSCI-322-Assignment-4
//
//  Created by Eric Kirchman on 3/17/21.
//
// MasterViewController = MasterViewController

import UIKit

class MasterViewController: UITableViewController {

    var presidents: [USPresident] = []
    /*
    var presidents = [
        USPresident(name: "Donald Trump", number: "45", startDate: "Jan 21, 2016", endDate: "Jan 21, 2021", nickname: "The Don", politicalParty: "Republican")
    ]
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        loadPropertyList()
        
        presidents.sort {
            $0.number < $1.number
        }
    }

    /**
         # loadPropertyList
    
         This function tries to access the presidents.plist file and decypt it
    
          **Parameters:** None
    
           **Returns:** Nothing
    
            **Notes:**
    
         */
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
    
    /**
         # numberOfSelections
    
            The amount of selections that the user can make
    
          **Parameters:** A UITableView object
    
           **Returns:** an Int (1)
    
            **Notes:**
    
         */
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    /**
         # tableView
    
         Passes the tableview an int which can be used to determine how many cells to create
    
          **Parameters:** A UITableView object, and an int, as numberOfRowsInSelection
    
           **Returns:** an Int
    
            **Notes:**
    
         */
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presidents.count
    }
 
   
    /**
         # tableView
    
         Configures cell previews with the president's name and political party
    
          **Parameters:** A UITableView object, and an index path
    
           **Returns:** PresidentCell object
    
            **Notes:**
    
         */
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! PresidentCell

        // Configure the cell...
        
        cell.nameLabel?.text = presidents[indexPath.row].name
        cell.politicalPartyLabel?.text = presidents[indexPath.row].politicalParty

        return cell
    }
    /**
         # tableView
    
            Pass the selected object to the new view controller
    
          **Parameters:** A UIStoryboardSegue object
    
           **Returns:** Nothing
    
            **Notes:**
    
         */
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        //if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let pres = presidents[indexPath.row]
                let controller = segue.destination as! ViewController
                controller.detailItem = pres
            }
        //}
    }
    
}
