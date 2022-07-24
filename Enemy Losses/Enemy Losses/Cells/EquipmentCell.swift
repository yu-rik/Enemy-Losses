//
//  EquipmentCell.swift
//  Enemy Losses
//
//  Created by Yurik Nosachenko on 23.07.2022.
//

import UIKit

class EquipmentCell: UITableViewCell {

    @IBOutlet weak var datOT: UILabel!
    
    func fillCell(data: EquipmentModel){
        datOT.text = data.date
    }
}
