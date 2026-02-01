//
//  SceneDelegate.swift
//  dz10
//
//  Created by Akhmed Mongush on 01/02/2026.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.windowScene = windowScene
        
        let vc = FirstViewController()
        let navVC = UINavigationController(rootViewController: vc)
        
        window?.makeKeyAndVisible()
        window?.rootViewController = navVC
    }
}

