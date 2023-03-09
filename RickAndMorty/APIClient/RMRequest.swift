//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Ebraheem Alnaqer on 04/03/2023.
//

import Foundation

/// object taht represents a single API call
final class RMRequest {
    // BASE url
    //Endpoint
    //path component
    // Query parametrs

    ///API constant
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
        
    }
    /// Desired endpoint
   private let endpoint: RMEndpoint
/// path component for api, if any
   private let pathComponents: [String]
  ///query argumnts for api, if any
   private let queryParameters: [URLQueryItem]
    
    /// constructed url teh api request in string format
    private var urlString : String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            
            string += "?"
            // name =value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
            
        }
        return string
    }
    /// computed  & constructed API url
   public var url : URL? {
        return URL(string: urlString)
    }
    ///Desired http method
    public let httpMethod = "GET"
     
    //Mark: - public
     
    /// Construct request
    /// -parametrs :
    ///    - endpoint  : target endpoint
    ///    - pathComponent  : Colletion of query parameter
    ///    - queryParamert : Collection of query parameter
    public init(endpoint: RMEndpoint,pathComponents :[String]=[],queryParameters :[URLQueryItem]=[] ){
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
        
    }
    
    //https://rickandmortyapi.com/api/character/2
    
    
    
}


extension RMRequest{
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
