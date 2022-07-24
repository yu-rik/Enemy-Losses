//
//  PersonalModel.swift
//  Enemy Losses
//
//  Created by Yurik Nosachenko on 23.07.2022.
//

import UIKit

struct PersonalModel: Codable {
    let date: String
    let day: Int
    let person: Int
    let personnel: String
    let pow: Int?
    
    enum CodingKeys: String, CodingKey {
        case date
        case day
        case person = "personnel"
        case personnel = "personnel*"
        case pow = "POW"
    }
}

