//
//  EquipmentTableViewController.swift
//  Enemy Losses
//
//  Created by Yurik Nosachenko on 23.07.2022.
//

import UIKit

class EquipmentTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()        
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return equipmentList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EquipmentCell", for: indexPath) as! EquipmentCell

        let equipmentData = equipmentList[indexPath.row]
        cell.fillCell(data: equipmentData)
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "EquipmentDetailSegue" {
            guard let indexPath = tableView.indexPathForSelectedRow else {return}
            let detailEquipmentVC = segue.destination as! EquipmentDetailViewController
            detailEquipmentVC.dataFromEquipmentTableView = equipmentList[indexPath.row]
        }
        
    }
}
