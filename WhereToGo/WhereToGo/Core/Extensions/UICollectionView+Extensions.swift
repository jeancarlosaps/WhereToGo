//
//  UICollectionView+Extensions.swift
//  WhereToGo
//
//  Created by Djorkaeff Alexandre Vilela Pereira on 1/5/21.
//

import UIKit

extension UICollectionView {
    func register(_ cell: UICollectionViewCell.Type) {
        register(cell, forCellWithReuseIdentifier: String(describing: cell.self))
    }

    func dequeueReusableCell<T: UICollectionViewCell>(cell: T.Type, indexPath: IndexPath) -> T {
        dequeueReusableCell(withReuseIdentifier: String(describing: T.self), for: indexPath) as? T ?? T()
    }
}
