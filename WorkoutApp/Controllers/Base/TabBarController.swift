import UIKit

enum Tabs: Int {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        configure()
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
        
        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = SettingsController()
        
        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionNavigation  = NavBarController(rootViewController: sessionController)
        let progressNavigation = NavBarController(rootViewController: progressController)
        let settingsNavigation = NavBarController(rootViewController: settingsController)
        
        overviewController.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.overview,
                                                     image: Resources.Images.tabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        
        sessionController.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.session,
                                                     image: Resources.Images.tabBar.session,
                                                     tag: Tabs.overview.rawValue)
        
        progressController.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.progress,
                                                     image: Resources.Images.tabBar.progress,
                                                     tag: Tabs.overview.rawValue)
        
        settingsController.tabBarItem = UITabBarItem(title: Resources.Strings.tabBar.setting,
                                                     image: Resources.Images.tabBar.setting,
                                                     tag: Tabs.overview.rawValue)
        
        setViewControllers([
            overviewNavigation,
            sessionNavigation,
            progressNavigation,
            settingsNavigation
        ], animated: false)
        

        
    }
    
}
