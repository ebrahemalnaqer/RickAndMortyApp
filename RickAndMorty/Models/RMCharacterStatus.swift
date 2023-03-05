//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Ebraheem Alnaqer on 05/03/2023.
//

import Foundation
enum RMCharacterStatus: String,Codable {
    //('Alive', 'Dead' or 'unknown').
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
}
