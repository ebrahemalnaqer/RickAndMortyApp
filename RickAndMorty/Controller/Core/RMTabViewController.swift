//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Ebraheem Alnaqer on 03/03/2023.
//

import UIKit
//import SwiftUI
//
//
//struct PreviewViewController_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewControllerPreview {
//            ViewController()
//        }
//        .previewDevice("iPhone 14")
//    }
//}
//
//
//struct ViewControllerPreview: UIViewControllerRepresentable {
//    let viewControllerBuilder: () -> UIViewController
//    
//    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
//        self.viewControllerBuilder = viewControllerBuilder
//    }
//    
//    func makeUIViewController(context: Context) -> some UIViewController {
//        return viewControllerBuilder()
//    }
//    
//    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
//    }
//}


final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red
        setUpTaps()
    }
    
    func setUpTaps(){
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodViewController()
        let settingsVC = RMSettingViewController()
        
        
//        charactersVC.title = "Characters"
//        locationsVC.title = "Locations"
//        episodesVC.title = "Episodes"
//        settingsVC.title = "Settings"
//
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [nav1,nav2,nav3,nav4] {
            nav.navigationBar.prefersLargeTitles = true
        
        }
        
        
        setViewControllers([nav1,nav2,nav3,nav4], animated: true)
        
    }


}

