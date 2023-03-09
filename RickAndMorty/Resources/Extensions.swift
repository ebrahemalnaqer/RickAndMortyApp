//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Ebraheem Alnaqer on 09/03/2023.
//

import UIKit


extension UIView {
    func addSubViews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
