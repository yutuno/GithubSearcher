//
//  AppDelegate.swift
//  GithubSearcher
//
//  Created by yuto on 2019/04/18.
//  Copyright © 2019 yuto. All rights reserved.
//

import UIKit

final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = FirstVC()
        window?.makeKeyAndVisible()
        
        return true
    }
}

