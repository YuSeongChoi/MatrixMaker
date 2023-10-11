//
//  AppDelegate.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/10.
//

import UIKit

@MainActor
final class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject, Identifiable {
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let configuration = connectingSceneSession.configuration.copy() as! UISceneConfiguration
        switch connectingSceneSession.role {
        case .windowApplication:
            configuration.delegateClass = WindowDelegate.self
        case .windowExternalDisplayNonInteractive:
            fallthrough
        default:
            break
        }
        return configuration
    }
    
}
