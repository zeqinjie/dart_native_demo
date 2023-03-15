//
//  AppDelegate.swift
//  DartNativeDemo
//
//  Created by zhengzeqin on 2022/10/11.
//  https://flutter.cn/docs/development/add-to-app/multiple-flutters

import Flutter
import UIKit
import FlutterPluginRegistrant
import GoogleMaps

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    let engines = FlutterEngineGroup(name: "multiple-flutters", project: nil)
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        GMSServices.provideAPIKey("AIzaSyCG8358Z121N5m1qni3teB1qdK2xowJifQ")
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

