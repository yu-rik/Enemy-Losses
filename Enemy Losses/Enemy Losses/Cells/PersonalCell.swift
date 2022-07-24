//
//  PersonalCell.swift
//  Enemy Losses
//
//  Created by Yurik Nosachenko on 23.07.2022.
//

import UIKit

class PersonalCell: UITableViewCell {

    @IBOutlet weak var dateOT: UILabel!
    
    func fillCell(data: PersonalModel){
        dateOT.text = data.date
    }
}
