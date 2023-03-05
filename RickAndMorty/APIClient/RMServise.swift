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
    ///     - type :  the type of the object we expected to get back
    ///     - completion : Callback with data or error
    public func execute<T: Codable>(_ request: RMRequest,expecting type: T.Type ,completion: @escaping(Result<T, Error>) -> Void) {
        
    }
}
