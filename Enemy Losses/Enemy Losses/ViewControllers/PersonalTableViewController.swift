//
//  PersonalTableViewController.swift
//  Enemy Losses
//
//  Created by Yurik Nosachenko on 23.07.2022.
//

import UIKit

class PersonalTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personList.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonalCell", for: indexPath) as! PersonalCell
        // Configure the cell...
        let personData = personList[indexPath.row]
        cell.fillCell(data: personData)
        return cell
    }
    
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "PersonalDetailSegue" {
             guard let indexPath = tableView.indexPathForSelectedRow else {return}
             let detailPersonVC = segue.destination as! PersonalDetailViewController
             detailPersonVC.dataFromPersonalTableView = personList[indexPath.row]
         }
     }
     
    
}
