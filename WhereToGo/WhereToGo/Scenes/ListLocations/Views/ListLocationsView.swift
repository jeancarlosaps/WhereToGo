//
//  ListLocationsView.swift
//  WhereToGo
//
//  Created by Djorkaeff Alexandre Vilela Pereira on 1/5/21.
//

import UIKit

final class ListLocationsView: UIView {
    
    private struct Metrics {
        static let defaultSize: CGFloat = 50
    }
    
    var collectionView: UICollectionView?

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        let flowLayout = UICollectionViewFlowLayout()
        
        // Now setup the flowLayout required for drawing the cells
        let space = 5.0 as CGFloat
        
        // Set view cell size
        flowLayout.itemSize = CGSize(width: Metrics.defaultSize, height: Metrics.defaultSize)
        
        // Set left and right margins
        flowLayout.minimumInteritemSpacing = space
        
        // Set top and bottom margins
        flowLayout.minimumLineSpacing = space
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        self.collectionView = collectionView
        collectionView.register(UICollectionViewCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = UIColor.cyan
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.widthAnchor.constraint(equalTo: widthAnchor),
            collectionView.heightAnchor.constraint(equalTo: heightAnchor),
        ])
        
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ListLocationsView: UICollectionViewDelegate {
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
}

extension ListLocationsView: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(cell: UICollectionViewCell.self, indexPath: indexPath as IndexPath)
        
        cell.backgroundColor = UIColor.green
        return cell
    }

}
