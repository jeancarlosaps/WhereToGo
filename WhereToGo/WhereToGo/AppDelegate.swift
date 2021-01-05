//
//  AppDelegate.swift
//  WhereToGo
//
//  Created by Jean Carlos Antônio Pereira dos Santos on 23/12/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let rootViewController = ListLocationsViewController()
        let navigation = UINavigationController(rootViewController: rootViewController)
        
        window?.rootViewController = navigation
        window?.makeKeyAndVisible()
        
        return true
    }

}

