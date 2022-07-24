//
//  PersonalDetailViewController.swift
//  Enemy Losses
//
//  Created by Yurik Nosachenko on 23.07.2022.
//

import UIKit

class PersonalDetailViewController: UIViewController {
    var dataFromPersonalTableView: PersonalModel?
    
    @IBOutlet weak var dateOT: UILabel!
    @IBOutlet weak var dayOT: UILabel!
    @IBOutlet weak var terminateOT: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateOT.text = dataFromPersonalTableView?.date
        dayOT.text = "\(dataFromPersonalTableView?.day ?? 0)"
        terminateOT.text = "\(dataFromPersonalTableView?.person ?? 0)"
       
    }
}
