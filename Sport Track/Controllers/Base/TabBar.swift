//
//  TabBar.swift
//  Sport Track
//
//  Created by Максим Зыкин on 28.07.2024.
//

import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBar: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configurate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func switchTo(tab: Tabs) {
        selectedIndex = tab.rawValue
    }
    
    private func configurate () {
        tabBar.tintColor = Resouces.Colors.active
        tabBar.barTintColor = Resouces.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = Resouces.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.overview,
                                                     image: Resouces.Image.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        
        sessionNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.session,
                                                     image: Resouces.Image.TabBar.session,
                                                     tag: Tabs.session.rawValue)
        
        progressNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.progress,
                                                     image: Resouces.Image.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        
        settingsNavigation.tabBarItem = UITabBarItem(title: Resouces.Strings.TabBar.settings,
                                                     image: Resouces.Image.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: false)
    }
}
