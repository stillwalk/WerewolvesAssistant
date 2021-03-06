//
//  AppDelegate.swift
//  WerewolvesAssistant
//
//  Created by Jun on 2017/5/27.
//  Copyright © 2017年 Jun. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let overlayClass = NSClassFromString("UIDebuggingInformationOverlay") as? UIWindow.Type
        _ = overlayClass?.perform(NSSelectorFromString("prepareDebuggingOverlay"))
        
//        configAppearance()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


extension AppDelegate {
    // 设置全局外观
    fileprivate func configAppearance() {
        // 跟状态栏颜色有关，设置此值状态栏才是白色
        // http://www.pchou.info/ios/2015/08/22/oc-statusbar.html
        // http://www.jianshu.com/p/ee1c9c91a477
        UINavigationBar.appearance().barStyle = .black
        
        // Bar's background color
        UINavigationBar.appearance().barTintColor = JKTMainColor
        
        // Back button and such
        UINavigationBar.appearance().tintColor = UIColor.white
        
        // Title's text color
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white,
                                                            NSFontAttributeName: JKTNavCenterFont]
        
        UIBarButtonItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.white,
                                                             NSFontAttributeName:JKTNavSideFont], for: .normal)
        
        // tabbar
        UITabBar.appearance().tintColor = JKTMainColor
    }
}
