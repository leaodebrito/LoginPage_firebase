//
//  LoginPageApp.swift
//  LoginPage
//
//  Created by Bruno Brito on 16/05/21.
//

import SwiftUI
import Firebase

@main
struct LoginPageApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView()
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
