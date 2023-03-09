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
    
    enum RMServiceError : Error{
        case failedToCreatRequest
        case faildToGetData
    }
    
    
    /// send rick and morty API call
    /// -parameters :
    ///     - request : Request instance
    ///     - type :  the type of the object we expected to get back
    ///     - completion : Callback with data or error
    public func execute<T: Codable>(_ request: RMRequest,expecting type: T.Type ,completion: @escaping(Result<T, Error>) -> Void) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreatRequest))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, _, error in
            guard let data = data , error == nil else {
                completion(.failure(error ?? RMServiceError.faildToGetData))
                return
            }
            
            
            //decode response
            do{
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
                
            }catch{
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    // Mark :- Private
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
