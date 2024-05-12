//
//  AppDelegate.swift
//  ShareImpressions
//
//  Created by Вадим Игнатенко on 12.05.24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let vc = AuthorizationVC()
        let navigation = UINavigationController(rootViewController: vc)
        window.rootViewController = navigation
        window.makeKeyAndVisible()
        self.window = window
        return true
    }	
}

