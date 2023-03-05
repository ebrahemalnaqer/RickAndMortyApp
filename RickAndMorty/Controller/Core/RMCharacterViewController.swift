//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Ebraheem Alnaqer on 03/03/2023.
//

import UIKit


 /// Controller to show and search for character 
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        let request = RMRequest(endpoint: .character,queryParameter: [URLQueryItem(name: "name", value: "rick"),URLQueryItem(name:"status", value: "alive")])
        print(request.url)
        RMServise.shared.execute(request, expecting: RMCharacter.self) { result in
//            switch result{
//            case.success(<#T##RMCharacter#>)
//            }
        }
        
    }
}

