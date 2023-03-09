//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Ebraheem Alnaqer on 03/03/2023.
//

import UIKit


 /// Controller to show and search for character 
final class RMCharacterViewController: UIViewController {

    private let characterListView = CharacterListView()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        setUpView()
        
      }
    private func setUpView(){
        view.addSubview(characterListView)
        NSLayoutConstraint.activate([characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
                                     characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
                                     characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
                                    ])
        
    }
}














//let request = RMRequest(endpoint: .character,queryParameter: [URLQueryItem(name: "name", value: "rick"),URLQueryItem(name:"status", value: "alive")])
//print(request.url)
//RMServise.shared.execute(request, expecting: RMCharacter.self) { result in
//    switch result{
//    case .success:
//        break
//    case .failure(let error):
//        print(String(describing: error))
//  }
//
//}
