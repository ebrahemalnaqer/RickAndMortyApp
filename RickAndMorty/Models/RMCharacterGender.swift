//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Ebraheem Alnaqer on 05/03/2023.
//

import Foundation

enum RMCharacterGender :String,Codable{
    //character ('Female', 'Male', 'Genderless' or 'unknown').]
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unkown = "unknown"
}
