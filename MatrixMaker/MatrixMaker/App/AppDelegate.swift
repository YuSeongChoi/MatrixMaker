//
//  AppDelegate.swift
//  MatrixMaker
//
//  Created by YuSeongChoi on 2023/10/10.
//

import UIKit
import SwiftUI

import FirebaseCore

@MainActor
final class AppDelegate: NSObject, UIApplicationDelegate, ObservableObject, Identifiable {
    
    static var orientationLock = UIInterfaceOrientationMask.all
    
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
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return AppDelegate.orientationLock
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
    
}
