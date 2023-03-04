//
//  RMServise.swift
//  RickAndMorty
//
//  Created by Ebraheem Alnaqer on 04/03/2023.
//

import Foundation
/// primary Api service object to get rick and morty data
final class RMServise {
    /// shared singleton instance
    static let shared = RMServise()
    ///privatized constructor
    private init() {}
    /// send rick and morty API call
    /// -parameters :
    ///     - request : Request instance
    ///     - completion : Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping() -> Void) {
        
    }
}
