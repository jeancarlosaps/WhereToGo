//
//  ListLocationsViewController.swift
//  WhereToGo
//
//  Created by Djorkaeff Alexandre Vilela Pereira on 1/5/21.
//

import UIKit

final class ListLocationsViewController: UIViewController {
    
    let listLocationsView = ListLocationsView()
    
    override func viewDidLoad() {
        self.view = listLocationsView
    }
}
