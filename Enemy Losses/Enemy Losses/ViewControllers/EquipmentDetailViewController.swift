//
//  EquipmentDetailViewController.swift
//  Enemy Losses
//
//  Created by Yurik Nosachenko on 23.07.2022.
//

import UIKit

class EquipmentDetailViewController: UIViewController {
    var dataFromEquipmentTableView: EquipmentModel?
    
    @IBOutlet weak var dateOT: UILabel!
    @IBOutlet weak var dayOT: UILabel!
    @IBOutlet weak var aircraftOT: UILabel!
    @IBOutlet weak var helicopterOT: UILabel!
    @IBOutlet weak var tankOT: UILabel!
    @IBOutlet weak var arcOT: UILabel!
    @IBOutlet weak var altelleryOT: UILabel!
    @IBOutlet weak var mrlOT: UILabel!
    @IBOutlet weak var droneOT: UILabel!
    @IBOutlet weak var ppoOT: UILabel!
    @IBOutlet weak var shipOT: UILabel!
    @IBOutlet weak var specialVehicOY: UILabel!
    @IBOutlet weak var fuelTankOT: UILabel!
    @IBOutlet weak var rocketsOT: UILabel!
    @IBOutlet weak var greateDirectionOT: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateOT.text = dataFromEquipmentTableView?.date
        dayOT.text = "\(dataFromEquipmentTableView?.day ?? 0)"
        aircraftOT.text = "\(dataFromEquipmentTableView?.aircraft ?? 0)"
        helicopterOT.text = "\(dataFromEquipmentTableView?.helicopter ?? 0)"
        tankOT.text = "\(dataFromEquipmentTableView?.tank ?? 0)"
        arcOT.text = "\(dataFromEquipmentTableView?.apc ?? 0)"
        altelleryOT.text = "\(dataFromEquipmentTableView?.fieldArtillery ?? 0)"
        mrlOT.text = "\(dataFromEquipmentTableView?.mrl ?? 0)"
        droneOT.text = "\(dataFromEquipmentTableView?.drone ?? 0)"
        ppoOT.text = "\(dataFromEquipmentTableView?.antiAircraftWarfare ?? 0)"
        shipOT.text = "\(dataFromEquipmentTableView?.navalShip ?? 0)"
        specialVehicOY.text = "\(dataFromEquipmentTableView?.specialEquipment ?? 0)"
        fuelTankOT.text = "\(dataFromEquipmentTableView?.vehiclesAndFuelTanks ?? 0)"
        rocketsOT.text = "\(dataFromEquipmentTableView?.cruiseMissiles ?? 0)"
        greateDirectionOT.text = dataFromEquipmentTableView?.greatestLossesDirection
    }
}
