//
//  EquipmentModel.swift
//  Enemy Losses
//
//  Created by Yurik Nosachenko on 23.07.2022.
//

import UIKit
struct EquipmentModel: Codable {
    let date: String
    let day: Int?     //
    let aircraft: Int
    let helicopter: Int
    let tank: Int
    let apc: Int
    let mrl: Int
    let fieldArtillery: Int
    let militaryAuto: Int?//
    let fuelTank: Int?//
    let drone: Int
    let navalShip: Int
    let antiAircraftWarfare: Int
    let specialEquipment: Int?//
    let mobileSRBMSystem: Int?//
    let greatestLossesDirection: String?//
    let cruiseMissiles: Int?//
    let vehiclesAndFuelTanks: Int?//
    
    enum CodingKeys: String, CodingKey {
        case date, day, aircraft, helicopter, tank, drone
        case apc = "APC"
        case fieldArtillery = "field artillery"
        case mrl = "MRL"
        case militaryAuto = "military auto"
        case fuelTank = "fuel tank"
        case navalShip = "naval ship"
        case antiAircraftWarfare = "anti-aircraft warfare"
        case specialEquipment = "special equipment"
        case mobileSRBMSystem = "mobile SRBM system"
        case greatestLossesDirection = "greatest losses direction"
        case vehiclesAndFuelTanks = "vehicles and fuel tanks"
        case cruiseMissiles = "cruise missiles"
    }
}
