//
//  AppDelegate.swift
//  Nutrition Analyzer
//
//  Created by Hanan Eissa on 24/08/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        Swizzler.swizzleForUI()
        setupRootViewController()
        return true
    }
    
    fileprivate func setupRootViewController() {
        window  = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: IngredientsViewController())
        window?.makeKeyAndVisible()
    }

}


